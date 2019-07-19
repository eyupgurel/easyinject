//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_HELLOWORLD_HPP
#define EASYINJECT_HELLOWORLD_HPP
#include "../boost/di.hpp"
#include <cassert>
#include <iostream>
namespace helloworld{
    namespace di = boost::di;
    struct iworld {
        virtual ~iworld() noexcept = default;
    };

    struct world : iworld {
        world() { std::cout << " world!" << std::endl; }
    };

    struct hello {
        explicit hello(int i) {
            assert(42 == i);
            std::cout << "hello";
        }
    };

    template <class T = class Greater>
    struct example {
        T h;
        iworld& w;
    };

    void run_hello_world();
}

#endif //EASYINJECT_HELLOWORLD_HPP
