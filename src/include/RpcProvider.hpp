#pragma once
#include "google/protobuf/service.h"
#include <memory>
#include <string>
#include <mymuduo/TcpServer.h>
#include <mymuduo/Logger.h>
#include <unordered_map>
class RpcProvider
{
public:
    // 将任务发布到框架提供的RPC节点上
    void NotifyService(google::protobuf::Service *service);

    void Run();
private:
    struct ServiceInfo{
        google::protobuf::Service *m_service;//保存服务对象
        // 保存服务中的方法名称和方法描述
        std::unordered_map<std::string, const google::protobuf::MethodDescriptor*> MethodMap;
    };
    // 存储所有注册的服务对象和服务方法
    std::unordered_map<std::string,ServiceInfo> m_ServiceMap;

    void onConnection(const TcpConnectionPtr &conn);
    // 可读写事件回调
    void onMessage(const TcpConnectionPtr &conn,
                Buffer *buf,
                Timestamp time);

    void SendRpcResponse(const TcpConnectionPtr&, google::protobuf::Message*);

    EventLoop loop_;
};