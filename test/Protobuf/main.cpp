#include <iostream>
#include <string>
#include "test.pb.h"
using namespace fixbug;

int main(){
    LoginResponse rsp;
    resultCode *rc = rsp.mutable_result();
    rc->set_errcode(1);
    rc->set_errmsg("登录处理失败了");
    std::string send_str;
    rc->SerializeToString(&send_str);
    std::cout<<send_str<<std::endl;

    GetFriendListsResponse Rsp;
    resultCode *rc2 = Rsp.mutable_result();
    rc2->set_errcode(0);
    User *user1 = Rsp.add_friend_list();
    user1->set_name("zhang san");
    user1->set_age(20);
    user1->set_sex(User::MAN);
    std::cout<<Rsp.friend_list_size()<<std::endl;
    User *user2 = Rsp.add_friend_list();
    user2->set_name("li si");
    user2->set_age(22);
    user2->set_sex(User::WOMAN);
    std::cout<<Rsp.friend_list_size()<<std::endl;
}

/*int main1(){
    LoginRequest req;
    // 封装Login的序列化数据
    req.set_name("zhang san");
    req.set_pwd("123456");
    std::string send_str;
    //对req进行序列化
    if(req.SerializeToString(&send_str))
    {
        std::cout<<send_str<<std::endl;
    }

    //反序列化
    LoginRequest reqB;
    if (reqB.ParseFromString(send_str)){
        std::cout<< reqB.name()<<std::endl;
        std::cout<< reqB.pwd()<<std::endl;
    }
    return 0;
}*/