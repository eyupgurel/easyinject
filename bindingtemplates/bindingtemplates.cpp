//
// Created by egl on 7/20/19.
//

#include "bindingtemplates.hpp"
using namespace bindingtemplates;

void bindingtemplates::drive_bindingtemplates() {

    auto i = 42;

    // clang-format off
    const auto injector = di::make_injector(
            di::bind<class Type>().to<world>()
            , di::bind<class Number>().to<int>(i)
    );
    // clang-format on

    {
        const auto hw = injector.create<hello>();

        static_assert(std::is_same<int, decltype(hw)::type::type>{}, "Type != int");
        assert(42 == hw.number);
    }

    {
        const auto hw = injector.create<std::shared_ptr<decltype(injector.create<hello>())>>();

        static_assert(std::is_same<int, decltype(hw)::element_type::type::type>{}, "Type != int");
        assert(42 == hw->number);
    }
}