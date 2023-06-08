import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Orders",
    id: "Orders-2a300a00-218e-4653-b065-5c22a90495d4"
}
service / on new http:Listener(9091) {
    @display {
        label: "Inventory",
        id: "Inventory-6c42b476-92f3-4d68-814c-0cd2ab8664ae"
    }
    http:Client inventoryClient;

    function init() returns error? {
        self.inventoryClient = check new ("");

    }

    resource function get orders() returns error? {

    }

    resource function post orders() returns error? {

    }

    resource function get orders/[string orderId]() returns error? {

    }

    resource function delete orders/[string orderId]() returns error? {

    }
}
