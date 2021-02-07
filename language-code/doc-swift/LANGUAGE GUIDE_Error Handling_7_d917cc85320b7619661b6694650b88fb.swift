let favoriteSnacks = [

    "Alice": "Chips",

    "Bob": "Licorice",

    "Eve": "Pretzels",

]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {

    let snackName = favoriteSnacks[person] ?? "Candy Bar"

    try vendingMachine.vend(itemNamed: snackName)

}