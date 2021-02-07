func makeASandwich() throws {

    // ...

}



do {

    try makeASandwich()

    eatASandwich()

} catch SandwichError.outOfCleanDishes {

    washDishes()

} catch SandwichError.missingIngredients(val ingredients) {

    buyGroceries(ingredients)

}