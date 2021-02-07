func eat(item: String) throws {

    do {

        try vendingMachine.vend(itemNamed: item)

    } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {

        print("Invalid selection, out of stock, or not enough money.")

    }

}