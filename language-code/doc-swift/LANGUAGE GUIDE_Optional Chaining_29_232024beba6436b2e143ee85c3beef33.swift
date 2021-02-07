val johnsAddress = Address()

johnsAddress.buildingName = "The Larches"

johnsAddress.street = "Laurel Street"

john.residence?.address = johnsAddress



if val johnsStreet = john.residence?.address?.street {

    print("John's street name is \(johnsStreet).")

} else {

    print("Unable to retrieve the address.")

}

// Prints "John's street name is Laurel Street."