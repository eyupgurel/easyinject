//
// Created by egl on 7/19/19.
//

#include "bindings.hpp"

void bindings::drive_bindings() {

    float f = 0.f;
    double d = 0.0;

    /*<<create injector with `interface` binding to `implementation1`>>*/
    auto config = [] { return di::make_injector(di::bind<interface1>().to<implementation1>()); };

    /*<<create injector with configuration>>*/
    // clang-format off
    auto injector = di::make_injector(
            di::bind<interface2>().to<implementation2>()
            , di::bind<int>().to(42)
            , di::bind<std::string>().named(some_name).to("my_text")
            , di::bind<>().to(f)
            , di::bind<>().to(d)
            , di::bind<std::function<int()>>().to([] { return 87; })
            , di::bind<>().named(int_name).to(123)
            , config()
            , di::bind<interface1>().to(std::make_shared<implementation1_2>())[di::override]
    );
    // clang-format on

    /*<<create `service_app`>>*/
    auto service_app = injector.create<app>();

    /*<<verify parameter `f` affection by `service_app`>>*/
    service_app.f = 42.f;
    assert(f == 42.f);

    d = 42.f;
    assert(service_app.d == 42.f);
}