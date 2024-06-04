#aux_source_directory(. SRC_LIST)
set(SRC_LIST MrprcApplication.cpp MprpcConfig.cpp rpcheader.pb.cc RpcProvider.cpp MprpcChannel.cpp MprpcControl.cpp)
add_library(mprpc SHARED ${SRC_LIST})
target_link_libraries(mprpc mymuduo pthread protobuf)
