// customersInLine is ["Ewa", "Barry", "Daniella"]

func serve(customer customerProvider: @autoclosure () -> String) {

    print("Now serving \(customerProvider())!")

}

serve(customer: customersInLine.remove(at: 0))

// Prints "Now serving Ewa!"