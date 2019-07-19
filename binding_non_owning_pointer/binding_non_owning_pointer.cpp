//
// Created by egl on 7/19/19.
//

#include "binding_non_owning_pointer.hpp"

using namespace binding_non_owning_pointer;
auto binding_non_owning_pointer::module(Pointer* ptr) { return di::bind<Pointer>().to(*ptr); }

void binding_non_owning_pointer::drive_binding_non_owning_pointer() {
    di::aux::owner<Pointer*> ptr{new Pointer{42}};

    auto injector = di::make_injector(module(ptr));
    injector.create<app>();

    delete ptr;
}