#include <iostream>
#include "MprprApplication.h"
#include "user.pb.h"
#include "MprpcChannel.h"
#include <google/protobuf/service.h>
int main(int argc,char *argv[]){
    // 整个程序启动以后，想使用RPC框架，一定要调用框架的初始化函数
    MprpcApplication::Init(argc, argv);
    fixbug::UserServiceRpc_Stub stub(new MprpcChannel);
    fixbug::LoginRequest request;
    request.set_name("zhang san");
    request.set_pwd("123456");

    fixbug::LoginResponse response;
    stub.Login(nullptr,&request,&response,nullptr); // RpcChannel->RpcChannel::callMethod 集中来做所有RPC方法调用的参数序列化和网络发送
    
    if(0 == response.result().errcode())
    {
        std::cout<<"Rpc Login Success"<< response.success()<<std::endl;
    }
    else
    {
        std::cout<<"Rpc Login Faile"<< response.result().errmsg()<<std::endl;
    }
    std::cout<<response.result().errmsg()<<" "<<response.result().errcode()<<std::endl;
    return 0;
}