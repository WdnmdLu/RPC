#pragma once
#include "MprpcConfig.h"
class MprpcApplication
{
    public:
        static void Init(int argc,char *argv[]);
        static MprpcApplication& GetInstance()
        {
            static MprpcApplication app;
            return app;
        }
    private:
        MprpcApplication(){}
        MprpcApplication(const MprpcApplication&) = delete;
        MprpcApplication(MprpcApplication&&) = delete;
        static MprpcConfig Config;
};