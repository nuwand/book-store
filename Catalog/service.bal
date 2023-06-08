import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Catalog",
    id: "Catalog-b602497f-832e-4a20-b781-85a0c0b6b136"
}
service / on new http:Listener(9092) {
    @display {
        label: "Inventory",
        id: "Inventory-6c42b476-92f3-4d68-814c-0cd2ab8664ae"
    }
    http:Client inventoryClient;

    function init() returns error? {
        self.inventoryClient = check new ("http://localhost:9090");
    }

    resource function get products(string? category = "all") returns string | error? {
        
        if category is "" {
            return error("Could not find stocks for product " + category);
        }
        
        string|error stocks =  self.inventoryClient->/stocks/[<string>category];    
        return stocks;
    }
}
