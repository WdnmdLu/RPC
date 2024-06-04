#include "RpcProvider.hpp"
#include "MprprApplication.h"
#include <functional>
#include <iostream>
#include <google/protobuf/descriptor.h>
#include "rpcheader.pb.h"
void RpcProvider::NotifyService(google::protobuf::Service *service){
    ServiceInfo service_Info;
    
    // 获取服务的描述信息
    const google::protobuf::ServiceDescriptor *Descriptor = service->GetDescriptor();

    std::string ServiceName = Descriptor->name();

    int Count = Descriptor->method_count();
    std::cout<<"Service Name: "<<ServiceName<<std::endl;
    std::cout<<"Method Count: "<<Count<<std::endl;
    for(int i=0;i<Count;i++){
        // 获取了服务对象指定方法下标的服务的描述
        const google::protobuf::MethodDescriptor *MethodDesc = Descriptor->method(i);
        std::string method_name = MethodDesc->name();
        service_Info.MethodMap.insert({method_name,MethodDesc});
        std::cout<<"Method Name: "<<method_name<<std::endl;
    }
    service_Info.m_service = service;
    m_ServiceMap.insert({ServiceName,service_Info});
}
// 启动一个RPC节点
void RpcProvider::Run(){
    std::string ip = MprpcApplication::GetInstance().GetConfig().Load("rpcServerIp");
    uint16_t Port = atoi(MprpcApplication::GetInstance().GetConfig().Load("rpcServerPort").c_str());

    InetAddress address(Port,ip);
    // 创建TcpServer对象
    TcpServer Server(&loop_,address,"RpcRpovider");

    
    // 设置回调函数
    Server.setConnectionCallback(std::bind(&RpcProvider::onConnection, 
        this, std::placeholders::_1));

    Server.setMessageCallback(std::bind(&RpcProvider::onMessage, this,
        std::placeholders::_1, std::placeholders::_2, std::placeholders::_3));

    // 设置线程数量
    Server.setThreadNum(4);

    std::cout<< "RpcProviderIp: "<<ip<<"  RpcProvierPort: "<<Port<<std::endl;
    // 启动网络服务
    Server.start();
    loop_.loop();
}

void RpcProvider::onConnection(const TcpConnectionPtr &conn){
    //连接断开
    if(!conn->connected()){
        conn->shutdown();
        return;
    }
}

void RpcProvider::onMessage(const TcpConnectionPtr &conn,
                Buffer *buf,
                Timestamp time)
{ 
    // 网络上接收的远程rpc调用请求的字符流
    std::string recv_buf = buf->retrieveAllAsString();
    // 从字符流中读取前四个字节的内容
    uint32_t header_size=0;
    recv_buf.copy((char*)&header_size,4,0);

    //根据header_size读取数据头的原始字符流，反序列化数据，得到RPC请求的详细信息
    std::string rpc_header_str = recv_buf.substr(4,header_size);
    mprpc::RpcHeader rpcHeader;
    std::string service_name;
    std::string method_name;
    uint32_t args_size;
    std::string args_str;
    if (rpcHeader.ParseFromString(rpc_header_str))
    {
        //数据头反序列化成功
        service_name = rpcHeader.service_name();
        method_name = rpcHeader.method_name();
        args_size = rpcHeader.args_size();
        args_str = recv_buf.substr(4 + header_size, args_size);
        std::cout<<"header_size: "<<header_size<<std::endl;
        std::cout<<"service_name: "<<service_name<<std::endl;
        std::cout<<"method_name: "<<method_name<<std::endl;
        std::cout<<"args_size: "<<args_size<<std::endl;
        std::cout<<"args_str: "<<args_str<<std::endl;
    }
    else{
        std::cout<<"Parse error!"<<std::endl;
    }

    // 获取service对象和method对象
    auto it = m_ServiceMap.find(service_name);
    if (it == m_ServiceMap.end())
    {
        std::cout<<service_name<<" is not exist!"<<std::endl;
        return;
    }
    google::protobuf::Service *service = it->second.m_service;// 获取Service
    // 获取Service中的Method
    const google::protobuf::MethodDescriptor *Method = it->second.MethodMap.find(method_name)->second;

    google::protobuf::Message *request = service->GetRequestPrototype(Method).New();
    google::protobuf::Message *response = service->GetResponsePrototype(Method).New();
    // 给下面的method方法调用绑定一个Closure的回调函数
    google::protobuf::Closure* done = 
        google::protobuf::NewCallback<RpcProvider, 
        const TcpConnectionPtr&, 
        google::protobuf::Message*>
        (this, 
        &RpcProvider::SendRpcResponse, 
        conn, response);
    if(!request->ParseFromString(args_str)){
        std::cout<<"Parse Error"<<std::endl;
        return;
    }
    service->CallMethod(Method,nullptr,request,response,done);
}
// Closure的回调操作，用于序列化RPC的响应和网络发送
void RpcProvider::SendRpcResponse(const TcpConnectionPtr& conn, google::protobuf::Message* response){
    std::string Response_str;
    //数据序列化
    if (response->SerializeToString(&Response_str))
    {
        // 通过muduo库发送消息给对方
        conn->send(Response_str);
        
    }
    conn->shutdown();// 模拟http短连接 由服务端主动断开连接
}