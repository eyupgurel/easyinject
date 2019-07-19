//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_BINDINGS_HPP
#define EASYINJECT_BINDINGS_HPP
#include "../boost/di.hpp"
#include <cassert>
#include <iostream>

namespace bindings {
//
// Copyright (c) 2012-2019 Kris Jusiak (kris at jusiak dot net)
//
// Distributed under the Boost Software License, Version 1.0.
// (See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//
//<-
#include <cassert>
#include <functional>
#include <memory>
#include <string>
//->
#include "../boost/di.hpp"

    namespace di = boost::di;

//<-
    struct interface1 {
        virtual ~interface1() noexcept = default;
    };
    struct interface2 {
        virtual ~interface2() noexcept = default;
    };
    struct implementation1 : interface1 {};
    struct implementation1_2 : interface1 {};
    struct implementation2 : interface2 {};
    auto some_name = [] {};
    auto int_name = [] {};
//->

    struct service {
        BOOST_DI_INJECT(service, const std::shared_ptr<interface1>& sp, bool b, int i, std::function<int()> f,
                        (named = int_name) const int ni)
                : sp(sp) {
            assert(dynamic_cast<implementation1_2*>(sp.get()));  // overridden
            assert(!b);                                          // default initialization
            assert(i == 42);
            assert(f() == 87);
            assert(ni == 123);
        }

        std::shared_ptr<interface1> sp;
    };

    struct app {
        BOOST_DI_INJECT(app, service copy, std::shared_ptr<interface1> sp, std::unique_ptr<interface2> ap, int i,
                        (named = some_name) const std::string& s, float& f, const double& d)
                : str(s), f(f), d(d) {
            assert(dynamic_cast<implementation2*>(ap.get()));
            assert(dynamic_cast<implementation1_2*>(sp.get()));  // overridden
            assert(copy.sp.get() == sp.get());
            assert(i == 42);
            assert(str == "my_text");
            assert(f == 0.f);
            assert(d == 0.f);
        }

        app& operator=(const app&) = delete;

        std::string str;
        float& f;
        const double& d;
    };

    void drive_bindings();

}


#endif //EASYINJECT_BINDINGS_HPP
