func createAddress() -> Address {

    print("Function was called.")



    let someAddress = Address()

    someAddress.buildingNumber = "29"

    someAddress.street = "Acacia Road"



    return someAddress

}

john.residence?.address = createAddress()