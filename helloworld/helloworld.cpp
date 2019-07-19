//
// Created by egl on 7/19/19.
//
#include "helloworld.hpp"
using namespace helloworld;

void helloworld::run_hello_world() {
    const auto injector = di::make_injector(
            di::bind<iworld>().to<world>()    // bind interface to implementation
            , di::bind<>().to(42)               // bind int to value 42
            , di::bind<class Greater>().to<hello>()   // bind template to type
    );

    /*<<create `example`>>*/
    injector.create<example>(); // or di::create<example>(injector)
}