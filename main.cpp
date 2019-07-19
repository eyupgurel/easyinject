#include <iostream>
#include <assert.h>
#include "boost/di.hpp"
#include "createobjectgraph/createobjectgraph.hpp"
#include "bindinterfaces/bindinterfaces.hpp"
namespace di = boost::di;

int main() {
    const auto injector = di::make_injector(
            di::bind<int>.to(42),
            di::bind<double>.to(87.0),
            di::bind<bindinterfaces::interface>.to<bindinterfaces::implementation>()

    );
    injector.create<createobjectgraph::simple_object_graph_example>();
    injector.create<std::unique_ptr<bindinterfaces::bind_interfaces_example>>();
}

