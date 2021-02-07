func makeASandwich() throws {

    // ...

}



do {

    try makeASandwich()

    eatASandwich()

} catch SandwichError.outOfCleanDishes {

    washDishes()

} catch SandwichError.missingIngredients(let ingredients) {

    buyGroceries(ingredients)

}