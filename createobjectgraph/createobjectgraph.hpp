//
// Created by egl on 2/3/19.
//

#ifndef EASYINJECT_CREATEOBJECTGRAPH_HPP
#define EASYINJECT_CREATEOBJECTGRAPH_HPP
namespace createobjectgraph{
    class ctor {
    public:
        explicit ctor(int i) : i(i) {}
        int i;
    };

    struct aggregate {
        double d;
    };

    class simple_object_graph_example {
    public:
        simple_object_graph_example(aggregate a, const ctor& c) {
            assert(87.0 == a.d);
            assert(42 == c.i);
        };
    };
}
#endif //EASYINJECT_CREATEOBJECTGRAPH_HPP
