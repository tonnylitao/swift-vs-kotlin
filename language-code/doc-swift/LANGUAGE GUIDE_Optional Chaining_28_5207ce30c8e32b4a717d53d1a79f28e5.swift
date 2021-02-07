if val johnsStreet = john.residence?.address?.street {

    print("John's street name is \(johnsStreet).")

} else {

    print("Unable to retrieve the address.")

}

// Prints "Unable to retrieve the address."