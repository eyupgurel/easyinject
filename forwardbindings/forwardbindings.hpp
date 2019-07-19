//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_FORWARDBINDINGS_HPP
#define EASYINJECT_FORWARDBINDINGS_HPP

#include <cassert>
#include <memory>
#include "../boost/di.hpp"
namespace di = boost::di;

namespace forwardbindings {
    class interface;
    class implementation;

    auto configuration = [] {
        // clang-format off
        return di::make_injector(
                /*<<binding using fwd declarations, no checking whether types are related*/
                di::bind<interface>().to<implementation>()
        );
        // clang-format on
    };

/*<<binding using fwd declarations, no checking whether types are related*/
    class interface {
    public:
        virtual ~interface() noexcept = default;
        virtual void dummy() = 0;
    };
    class implementation : public interface {
    public:
        void dummy() override {}
    };

    void drive_forwardbindings();
}


#endif //EASYINJECT_FORWARDBINDINGS_HPP
