class Product {

    val name: String

    init?(name: String) {

        if name.isEmpty { return nil }

        self.name = name

    }

}



class CartItem: Product {

    val quantity: Int

    init?(name: String, quantity: Int) {

        if quantity < 1 { return nil }

        self.quantity = quantity

        super.init(name: name)

    }

}