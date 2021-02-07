// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: (): String) {

    print("Now serving \(customerProvider())!")

}

serve(customer: { customersInLine.remove(at: 0) } )

// Prints "Now serving Alex!"