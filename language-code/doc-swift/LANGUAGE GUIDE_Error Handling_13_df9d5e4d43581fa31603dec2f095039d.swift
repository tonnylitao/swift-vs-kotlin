func nourish(with item: String) throws {

    do {

        try vendingMachine.vend(itemNamed: item)

    } catch is VendingMachineError {

        print("Couldn't buy that from the vending machine.")

    }

}



do {

    try nourish(with: "Beet-Flavored Chips")

} catch {

    print("Unexpected non-vending-machine-related error: \(error)")

}

// Prints "Couldn't buy that from the vending machine."