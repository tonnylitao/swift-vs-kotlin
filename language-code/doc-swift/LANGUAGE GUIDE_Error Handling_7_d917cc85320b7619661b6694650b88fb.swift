val favoriteSnacks = [

    "Alice": "Chips",

    "Bob": "Licorice",

    "Eve": "Pretzels",

]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {

    val snackName = favoriteSnacks[person] ?? "Candy Bar"

    try vendingMachine.vend(itemNamed: snackName)

}