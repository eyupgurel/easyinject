//
// Created by egl on 7/19/19.
//

#ifndef EASYINJECT_THECONCEPTS_HPP
#define EASYINJECT_THECONCEPTS_HPP
#include <cassert>
#include <sstream>

#include "../example/polymorphism/common/config.hpp"

namespace theconcepts {
    template <class T>
    concept bool Drawable = not boost::di::aux::is_complete<T>::value or requires(T t, std::ostream& out) {
        t.draw(out);
    };

    /*<<Static polymorphism - concepts>>*/
    template <Drawable TDrawable = class Drawable>  // requires Drawable<TDrawable>
    class App {
    public:
        explicit App(const TDrawable drawable) : drawable{drawable} {}
        void draw(std::ostream& out) const { drawable.draw(out); }

    private:
        const TDrawable drawable;
    };

    struct Square {
        void draw(std::ostream& out) const { out << "Square"; }
    };

    struct Circle {
        void draw(std::ostream& out) const { out << "Circle"; }
    };

    void drive_static_polymorphism_through_concepts();

}


#endif //EASYINJECT_THECONCEPTS_HPP
