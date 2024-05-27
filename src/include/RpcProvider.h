#pragma once
#include "google/protobuf/service.h"
#include <memory>
#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
#include <muduo/net/InetAddress.h>
class RpcProvider
{
public:
    // 将任务发布到框架提供的RPC节点上
    void NotifyService(google::protobuf::Service *service);

    void Run();
private:
    std::unique_ptr<muduo::net::TcpServer> m_tcpServerPtr;
    muduo::net::EventLoop *m_eventLoop;
};