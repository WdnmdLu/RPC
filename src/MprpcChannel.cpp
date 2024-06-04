#include "MprpcChannel.h"
#include <google/protobuf/descriptor.h>
#include <google/protobuf/message.h>
#include <string>
#include "rpcheader.pb.h"
#include "MprprApplication.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
/*
header_size + service_name method_name args_size +args
*/
// 所有通过stub代理对象调用的rpc方法，都走到这里，统一做数据的序列化和网络发送
void MprpcChannel::CallMethod(const google::protobuf::MethodDescriptor* method,
                          google::protobuf::RpcController* controller, 
                          const google::protobuf::Message* request,
                          google::protobuf::Message* response, 
                          google::protobuf::Closure* done)
{
    const google::protobuf::ServiceDescriptor* sd = method->service();
    std::string service_name = sd->name();  
    std::string method_name = method->name();
    std::string args_str;
    int args_size = 0;
    //请求序列化
    if(request->SerializeToString(&args_str))
    {
        args_size = args_str.size();
    }
    else
    {
        std::cout<<"Serialize request error"<<std::endl;
    }
    //定义RPC的请求header
    mprpc::RpcHeader rpcHeader;
    rpcHeader.set_service_name(service_name);
    rpcHeader.set_method_name(method_name);
    rpcHeader.set_args_size(args_size);

    uint32_t headerSize=0;
    std::string rpc_header_str;
    if(rpcHeader.SerializeToString(&rpc_header_str))
    {
        headerSize = rpc_header_str.size();
    }
    else
    {
        std::cout<<"serialize request error!"<<std::endl;
        return;
    }

    //组织待发送的rpc请求的字符串
    std::string send_rpc_str;
    send_rpc_str.insert(0,std::string((char*)&headerSize,4));
    send_rpc_str += rpc_header_str;
    send_rpc_str += args_str;

    std::cout<<"header_size: "<<headerSize<<std::endl;
    std::cout<<"service_name: "<<service_name<<std::endl;
    std::cout<<"method_name: "<<method_name<<std::endl;
    std::cout<<"args_size: "<<args_size<<std::endl;
    std::cout<<"args_str: "<<args_str<<std::endl;

    //客户端不需要考虑高并发，使用简单的TCP编程就可以了
    int clientfd = socket(AF_INET,SOCK_STREAM, 0);
    if(-1 == clientfd)
    {
        std::cout<<"Create socket error! errno"<<errno<<std::endl;
        exit(EXIT_FAILURE);
    }
    std::string ip = MprpcApplication::GetInstance().GetConfig().Load("rpcServerIp");
    uint16_t port = atoi(MprpcApplication::GetInstance().GetConfig().Load("rpcServerPort").c_str());

    struct sockaddr_in sockaddr;
    sockaddr.sin_addr.s_addr = inet_addr(ip.c_str()); 
    sockaddr.sin_family = AF_INET; 
    sockaddr.sin_port = htons(port);

    if(-1 == connect(clientfd, (struct sockaddr*)&sockaddr,sizeof(sockaddr))){
        std::cout <<"connect error! errno: "<<errno<<std::endl;
        exit(EXIT_FAILURE);
    }

    write(clientfd,send_rpc_str.c_str(),send_rpc_str.size());
    std::cout<<"Send Message Success"<<std::endl;

    char recv_buf[1024] = {0};
    int recv_size = read(clientfd,recv_buf,1024);
    if (-1 == recv_size){
        std::cout<<"Recv error! errno: "<<errno<<std::endl;
        close(clientfd);
        return;
    }
    std::string Response_Str(recv_buf,0,recv_size);
    std::cout<<Response_Str<<std::endl;
    close(clientfd);
    if(!response->ParseFromString(Response_Str)){
        std::cout<<"Parse error! errno: "<<errno<<std::endl;
        return;
    }
    return;
}