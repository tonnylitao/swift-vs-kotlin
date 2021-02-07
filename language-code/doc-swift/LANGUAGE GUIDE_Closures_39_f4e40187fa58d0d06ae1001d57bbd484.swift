var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

print(customersInLine.count)

// Prints "5"



let customerProvider = { customersInLine.remove(at: 0) }

print(customersInLine.count)

// Prints "5"



print("Now serving \(customerProvider())!")

// Prints "Now serving Chris!"

print(customersInLine.count)

// Prints "4"