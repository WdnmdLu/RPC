#include "user.pb.h"
#include "MprprApplication.h"
#include "RpcProvider.h"
#include <string>
#include <iostream>
using namespace google::protobuf;

// 假设UserServiceRpc类的定义在"user.pb.h"中
// 需要包含"user.pb.h"头文件，并链接相关库

class UserService : public fixbug::UserServiceRpc
{
public:
    bool Login(std::string name, std::string pwd)
    {
        std::cout << "Doing local Service Login" << std::endl;
        std::cout << "name: " << name << " pwd: " << pwd << std::endl;
        return true;
    }

    void Login(::google::protobuf::RpcController* controller,
               const ::fixbug::LoginRequest* request,
               ::fixbug::LoginResponse* response,
               ::google::protobuf::Closure* done)
    {
        std::string name = request->name();
        std::string pwd = request->pwd();

        bool login_result = Login(name, pwd);

        fixbug::ResultCode *code = response->mutable_result();
        code->set_errcode(0);
        code->set_errmsg("Ok");
        response->set_success(login_result);
    }
};

int main(int argc, char *argv[])
{
    // 调用框架的初始化操作
    MprpcApplication::Init(argc, argv);

    // Provider是一个RPC网络服务对象，把UserService对象发布到rpc节点上
    RpcProvider provider;
    provider.NotifyService(new UserService());
    provider.Run();

    return 0;
}