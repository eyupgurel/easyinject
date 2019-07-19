//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_DYNAMICSBINDINGS_HPP
#define EASYINJECT_DYNAMICSBINDINGS_HPP


#include <cassert>
#include <memory>
#include "../boost/di.hpp"
namespace di = boost::di;

namespace dynamicsbindings {
    enum eid { e1 = 1, e2 = 2 };
    struct interface {
        virtual ~interface() noexcept = default;
    };
    struct implementation1 : interface {};
    struct implementation2 : interface {};

/*<<module configuration>>*/
    auto dynamic_bindings = [](eid& id) {
        return di::make_injector(
                /*<<bind `interface` to lazy lambda expression>>*/
                di::bind<interface>().to([&](const auto& injector) -> std::shared_ptr<interface> {
                    switch (id) {
                        default:
                            return nullptr;
                        case e1:
                            return injector.template create<std::shared_ptr<implementation1>>();
                        case e2:
                            return injector.template create<std::shared_ptr<implementation2>>();
                    }
                    return nullptr;
                }));
    };

    void drive_dynamic_bindings();
}


#endif //EASYINJECT_DYNAMICSBINDINGS_HPP
