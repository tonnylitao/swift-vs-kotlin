if let zeroShirts = CartItem(name: "shirt", quantity: 0) {

    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")

} else {

    print("Unable to initialize zero shirts")

}

// Prints "Unable to initialize zero shirts"