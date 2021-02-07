if val oneUnnamed = CartItem(name: "", quantity: 1) {

    print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")

} else {

    print("Unable to initialize one unnamed product")

}

// Prints "Unable to initialize one unnamed product"