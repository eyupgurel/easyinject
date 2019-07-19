//
// Created by egl on 7/19/19.
//

#include "iscreatable.hpp"

void iscreatable::drive_iscreatable() {
    {
        const auto injector = di::make_injector(di::bind<iworld>().to<world>());
        static_assert(di::is_creatable<hello>(injector), "");
    }

    {
        const auto injector = di::make_injector();
        static_assert(!di::is_creatable<hello>(injector), "iworld is not abstract!");
    }
}