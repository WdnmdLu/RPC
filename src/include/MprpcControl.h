#pragma once
#include <google/protobuf/service.h>
#include <string>
class MprpcController : public google::protobuf::RpcController
{
    public:
        MprpcController();
        void Rest();
        bool Failed() const;
        std::string ErrorText() const;
        void SetFailed(const std::string& reason);
    private:
        //执行方法过程中的状态
        bool m_failed;
        //RPC方法执行过程中的错误信息
        std::string m_errText;
};