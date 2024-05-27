#pragma once
#include <unordered_map>
#include <string>
class MprpcConfig
{
    public:
        // 解析加载配置文件
        void LoadConfigfile(const char *config_file);
        // 查询配置项信息
        std::string Load(const std::string &key);
    private:
        std::unordered_map<std::string,std::string> m_configMap;
};