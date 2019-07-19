cmake_minimum_required(VERSION 3.13)
project(EasyInject)

set(CMAKE_CXX_STANDARD 17)

add_executable(EasyInject main.cpp createobjectgraph/createobjectgraph.hpp bindinterfaces/bindinterfaces.hpp helloworld/helloworld.hpp createobjectgraph/createobjectgraph.cpp helloworld/helloworld.cpp bindings/bindings.cpp bindings/bindings.hpp dynamicbindings/dynamicsbindings.cpp dynamicbindings/dynamicsbindings.hpp forwardbindings/forwardbindings.cpp forwardbindings/forwardbindings.hpp iscreatable/iscreatable.cpp iscreatable/iscreatable.hpp)