//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_MULTIPLEBINDINGS_HPP
#define EASYINJECT_MULTIPLEBINDINGS_HPP

//<-
#include <initializer_list>  // has to be before, due to the bug in clang < 3.7
//->
#include "../boost/di.hpp"
//<-
#include <cassert>
#include <memory>
#include <set>
#include <vector>
//->
namespace di = boost::di;
//<-

namespace multiplebindings {
struct interface {
    virtual ~interface() noexcept = default;
    virtual void dummy() = 0;
};
struct implementation1 : interface {
    void dummy() override {}
};
struct implementation2 : interface {
    void dummy() override {}
};
//->

struct example {
    example(std::vector<std::unique_ptr<interface>> v, std::vector<int> i) {
        assert(v.size() == 4);
        assert(dynamic_cast<implementation1*>(v[0].get()));
        assert(dynamic_cast<implementation2*>(v[1].get()));
        assert(dynamic_cast<implementation1*>(v[2].get()));
        assert(dynamic_cast<implementation2*>(v[3].get()));

        assert(i.size() == 7);
        assert(i[0] == 1);
        assert(i[1] == 2);
        assert(i[2] == 3);
        assert(i[3] == 5);
        assert(i[4] == 8);
        assert(i[5] == 13);
        assert(i[6] == 21);
    }
};
void drive_multiplebindings();
}


#endif //EASYINJECT_MULTIPLEBINDINGS_HPP
