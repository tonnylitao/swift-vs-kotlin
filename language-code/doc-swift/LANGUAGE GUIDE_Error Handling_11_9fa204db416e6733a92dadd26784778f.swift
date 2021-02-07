var vendingMachine = VendingMachine()

vendingMachine.coinsDeposited = 8

do {

    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)

    print("Success! Yum.")

} catch VendingMachineError.invalidSelection {

    print("Invalid Selection.")

} catch VendingMachineError.outOfStock {

    print("Out of Stock.")

} catch VendingMachineError.insufficientFunds(val coinsNeeded) {

    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")

} catch {

    print("Unexpected error: \(error).")

}

// Prints "Insufficient funds. Please insert an additional 2 coins."