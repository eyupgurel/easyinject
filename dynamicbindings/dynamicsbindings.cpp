//
// Created by egl on 7/19/19.
//

#include "dynamicsbindings.hpp"
using namespace dynamicsbindings;
void dynamicsbindings::drive_dynamic_bindings() {

    auto id = e1;

    /*<<create interface with `id = e1`>>*/
    auto injector = di::make_injector(dynamic_bindings(id));
    assert(dynamic_cast<implementation1*>(injector.create<std::shared_ptr<interface>>().get()));

    id = e2;
    /*<<create interface with `id = e2`>>*/
    assert(dynamic_cast<implementation2*>(injector.create<std::shared_ptr<interface>>().get()));
    (void)id;
}