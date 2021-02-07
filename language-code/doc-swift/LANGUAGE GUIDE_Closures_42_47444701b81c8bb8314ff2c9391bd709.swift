// customersInLine is ["Barry", "Daniella"]

var customerProviders: [() -> String] = []

func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {

    customerProviders.append(customerProvider)

}

collectCustomerProviders(customersInLine.remove(at: 0))

collectCustomerProviders(customersInLine.remove(at: 0))



print("Collected \(customerProviders.count) closures.")

// Prints "Collected 2 closures."

for customerProvider in customerProviders {

    print("Now serving \(customerProvider())!")

}

// Prints "Now serving Barry!"

// Prints "Now serving Daniella!"