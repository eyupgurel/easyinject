//
// Created by egl on 7/19/19.
//
#include "createobjectgraph.hpp"
#include "../bindinterfaces/bindinterfaces.hpp"
using namespace createobjectgraph;
namespace di = boost::di;
void createobjectgraph::run_objectgraphcreation() {
    const auto injector = di::make_injector(
            di::bind<int>.to(42),
    di::bind<double>.to(87.0),
            di::bind<bindinterfaces::interface>.to<bindinterfaces::implementation>()

    );
    injector.create<createobjectgraph::simple_object_graph_example>();
    injector.create<std::unique_ptr<bindinterfaces::bind_interfaces_example>>();

}

