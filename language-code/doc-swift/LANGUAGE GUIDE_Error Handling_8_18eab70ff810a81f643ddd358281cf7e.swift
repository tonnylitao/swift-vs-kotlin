struct PurchasedSnack {

    let name: String

    init(name: String, vendingMachine: VendingMachine) throws {

        try vendingMachine.vend(itemNamed: name)

        self.name = name

    }

}