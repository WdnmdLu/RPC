#include "MprprApplication.h"
#include <unistd.h>
#include <stdio.h>
#include <iostream>
#include <string>
MprpcConfig MprpcApplication::Config; 
void ShowArgsHelp()
{
    std::cout<<"Format: commd -i <configfile>" <<std::endl;
}
void MprpcApplication::Init(int argc,char *argv[]){
    if (argc < 2)
    {
        ShowArgsHelp();
        exit(EXIT_FAILURE);
    }
    int c = 0;
    std::string config_file;
    while((c = getopt(argc,argv,"i: "))!= -1)
    {
        switch (c)
        {
        case 'i':
            config_file = optarg;
            break;
        case '?':
            std::cout<<"invaild args!" <<std::endl;
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        case ':':
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        default:
            break;
        }
    }

    // 加载配置文件
    Config.LoadConfigfile(config_file.c_str());
    return;
}

MprpcConfig& MprpcApplication::GetConfig()
{
    return Config;
}
MprpcApplication& MprpcApplication::GetInstance()
{
    static MprpcApplication app;
    return app;
}
