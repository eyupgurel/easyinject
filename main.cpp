#include "createobjectgraph/createobjectgraph.hpp"
#include "helloworld/helloworld.hpp"
#include "bindings/bindings.hpp"

int main() {
    bindings::drive_bindings();
    helloworld::run_hello_world();
    createobjectgraph::run_objectgraphcreation();
}

