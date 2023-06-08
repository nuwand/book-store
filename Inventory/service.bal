import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Inventory",
    id: "Inventory-6c42b476-92f3-4d68-814c-0cd2ab8664ae"
}
service / on new http:Listener(9090) {

    resource function get stocks/[string category]() returns string | error? {
            return "Found 10 items of " + category;
    }
 
    resource function post category() returns error? {

    }

    resource function put stocks/[string category]() returns error? {

    }
}
