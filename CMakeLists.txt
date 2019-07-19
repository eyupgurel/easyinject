cmake_minimum_required(VERSION 3.13)
project(EasyInject)

set(CMAKE_CXX_STANDARD 17)

add_executable(EasyInject main.cpp createobjectgraph/createobjectgraph.hpp bindinterfaces/bindinterfaces.hpp helloworld/helloworld.hpp createobjectgraph/createobjectgraph.cpp helloworld/helloworld.cpp bindings/bindings.cpp bindings/bindings.hpp dynamicbindings/dynamicsbindings.cpp dynamicbindings/dynamicsbindings.hpp forwardbindings/forwardbindings.cpp forwardbindings/forwardbindings.hpp iscreatable/iscreatable.cpp iscreatable/iscreatable.hpp multiplebindings/multiplebindings.cpp multiplebindings/multiplebindings.hpp theconcepts/theconcepts.cpp theconcepts/theconcepts.hpp binding_non_owning_pointer/binding_non_owning_pointer.cpp binding_non_owning_pointer/binding_non_owning_pointer.hpp bindingtemplates/bindingtemplates.cpp bindingtemplates/bindingtemplates.hpp)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fconcepts")
add_subdirectory(programme)
add_subdirectory(testland)
