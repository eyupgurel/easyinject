#include "createobjectgraph/createobjectgraph.hpp"
#include "helloworld/helloworld.hpp"
#include "bindings/bindings.hpp"
#include "dynamicbindings/dynamicsbindings.hpp"
#include "forwardbindings/forwardbindings.hpp"
#include "iscreatable/iscreatable.hpp"
#include "multiplebindings/multiplebindings.hpp"
#include "binding_non_owning_pointer/binding_non_owning_pointer.hpp"
#include "bindingtemplates/bindingtemplates.hpp"

int main() {
    bindingtemplates::drive_bindingtemplates();
    binding_non_owning_pointer::drive_binding_non_owning_pointer();
    multiplebindings::drive_multiplebindings();
    iscreatable::drive_iscreatable();
    forwardbindings::drive_forwardbindings();
    dynamicsbindings::drive_dynamic_bindings();
    bindings::drive_bindings();
    helloworld::run_hello_world();
    createobjectgraph::run_objectgraphcreation();
}

