func copyAddress(address: Address) -> Address {
    var result = Address() // there's no 'new' keyword in Swift too
    result.name = address.name // accessors are called
    result.street = address.street
    // ...
    return result
}
