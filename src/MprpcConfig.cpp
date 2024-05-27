#include "MprpcConfig.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
void MprpcConfig::LoadConfigfile(const char *config_file)
{
    std::ifstream file(config_file);
    if (!file.is_open())
    {
        std::cerr << config_file <<" is not exist!" << std::endl;
        exit(EXIT_FAILURE);
    }

    std::string line;
    while (std::getline(file, line))
    {
        if (line.empty() || line[0] == '#')
        {
            continue;
        }

        std::istringstream iss(line);
        std::string key, value;
        if (std::getline(iss, key, '=') && std::getline(iss, value))
        {
            // 去除空白字符
            key.erase(0, key.find_first_not_of(" \t\r\n"));
            key.erase(key.find_last_not_of(" \t\r\n") + 1);
            value.erase(0, value.find_first_not_of(" \t\r\n"));
            value.erase(value.find_last_not_of(" \t\r\n") + 1);

            m_configMap[key] = value;
        }
    }
    std::cout<<"rpcServerIp: "<<Load("rpcServerIp")<<std::endl;
    std::cout<<"rpcServerPort: "<<Load("rpcServerPort")<<std::endl;
    std::cout<<"zookeeperIp: "<<Load("zookeeperIp")<<std::endl;
    std::cout<<"zookeeperPort: "<<Load("zookeeperPort")<<std::endl;
    file.close();
}
std::string MprpcConfig::Load(const std::string &key)
{
    if (m_configMap.count(key) > 0)
    {
        return m_configMap[key];
    }
    else
    {
        // 如果找不到对应的键，则返回一个空字符串或者抛出异常，取决于你的需求
        return "";
    }
}