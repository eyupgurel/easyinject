//
// Created by egl on 2/3/19.
//

#ifndef EASYINJECT_BINDINTERFACES_HPP
#define EASYINJECT_BINDINTERFACES_HPP

#include <memory>
#include <assert.h>

namespace bindinterfaces {
    struct interface {
        virtual ~interface() noexcept = default;

        virtual int get() const = 0;
    };

    class implementation : public interface {
    public:
        int get() const override { return 42; }
    };

    struct bind_interfaces_example {
        bind_interfaces_example(std::shared_ptr<interface> i) {
            assert(42 == i->get());
        }
    };
}


#endif //EASYINJECT_BINDINTERFACES_HPP
