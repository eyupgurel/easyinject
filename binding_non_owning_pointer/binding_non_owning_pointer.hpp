//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_BINDING_NON_OWNING_POINTER_HPP
#define EASYINJECT_BINDING_NON_OWNING_POINTER_HPP

#include <cassert>
//->
#include "../boost/di.hpp"

namespace di = boost::di;

namespace binding_non_owning_pointer {
    using Pointer = int;

    auto module(Pointer* ptr);

    struct app {
        app(Pointer& ptr) { assert(42 == ptr); }
    };

    void drive_binding_non_owning_pointer();

}


#endif //EASYINJECT_BINDING_NON_OWNING_POINTER_HPP
