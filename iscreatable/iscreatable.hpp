//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_ISCREATABLE_HPP
#define EASYINJECT_ISCREATABLE_HPP

#include <cassert>
#include "../boost/di.hpp"
namespace di = boost::di;

namespace iscreatable {
    struct iworld {
        virtual ~iworld() noexcept = default;
        virtual void f() = 0;
    };

    struct world : iworld {
        void f() override {}
    };

    struct hello {
        explicit hello(iworld&) {}
    };

    void drive_iscreatable();
}


#endif //EASYINJECT_ISCREATABLE_HPP
