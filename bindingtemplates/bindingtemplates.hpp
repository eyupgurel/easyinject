//
// Created by egl on 7/20/19.
//

#ifndef EASYINJECT_BINDINGTEMPLATES_HPP
#define EASYINJECT_BINDINGTEMPLATES_HPP
#include <cassert>
#include <memory>
#include <type_traits>
#include "../boost/di.hpp"

namespace di = boost::di;
namespace bindingtemplates {
//<-
#if defined(_MSC_VER)
    class Type;
class Number;
#endif
//->

    template <typename T = class Type, typename TNumber = class Number>
    struct hello {
        using type = T;
        explicit hello(const TNumber& number) : number{number} {}
        TNumber number;
    };

    template <typename T = int>
    struct world {
        using type = T;
    };

    void drive_bindingtemplates();
}


#endif //EASYINJECT_BINDINGTEMPLATES_HPP
