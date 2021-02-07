func createAddress(): Address {

    print("Function was called.")



    val someAddress = Address()

    someAddress.buildingNumber = "29"

    someAddress.street = "Acacia Road"



    return someAddress

}

john.residence?.address = createAddress()