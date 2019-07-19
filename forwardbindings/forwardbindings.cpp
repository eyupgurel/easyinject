//
// Created by egl on 7/19/19.
//

#include "forwardbindings.hpp"
void forwardbindings::drive_forwardbindings() {
    /*<<make injector configuration>>*/
    auto injector = configuration();
    assert(dynamic_cast<implementation*>(injector.create<std::unique_ptr<interface>>().get()));
}