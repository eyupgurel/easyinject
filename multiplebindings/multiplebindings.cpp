//
// Created by egl on 7/19/19.
//

#include "multiplebindings.hpp"

using namespace multiplebindings;

void multiplebindings::drive_multiplebindings() {
    // clang-format off
    auto il = {1, 2, 3, 5, 8, 13, 21};
    auto injector = di::make_injector(
            di::bind<int[]>().to(il)
            , di::bind<interface* []>().to<implementation1, implementation2, interface, di::named<class Implementation2>>()
            , di::bind<interface>().to<implementation1>()  // <------------------/                         |
            , di::bind<interface>().named<class Implementation2>().to<implementation2>()  // <-------------/
    );
    // clang-format on

    injector.create<example>();

    assert(injector.create<std::vector<int>>().size() == 7);
    assert(injector.create<std::set<int>>().size() == 7);

    assert(injector.create<std::vector<std::shared_ptr<interface>>>().size() == 4);
    assert(injector.create<std::set<std::shared_ptr<interface>>>().size() == 2);  // unique instances
}
