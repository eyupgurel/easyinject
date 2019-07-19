#include "createobjectgraph/createobjectgraph.hpp"
#include "helloworld/helloworld.hpp"
#include "bindings/bindings.hpp"
#include "dynamicbindings/dynamicsbindings.hpp"
#include "forwardbindings/forwardbindings.hpp"
#include "iscreatable/iscreatable.hpp"

int main() {
    iscreatable::drive_iscreatable();
    forwardbindings::drive_forwardbindings();
    dynamicsbindings::drive_dynamic_bindings();
    bindings::drive_bindings();
    helloworld::run_hello_world();
    createobjectgraph::run_objectgraphcreation();
}

