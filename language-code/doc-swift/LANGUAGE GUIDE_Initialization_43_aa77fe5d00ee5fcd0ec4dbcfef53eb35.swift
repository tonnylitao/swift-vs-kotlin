class RecipeIngredient: Food {

    var quantity: Int

    init(name: String, quantity: Int) {

        self.quantity = quantity

        super.init(name: name)

    }

    override convenience init(name: String) {

        self.init(name: name, quantity: 1)

    }

}