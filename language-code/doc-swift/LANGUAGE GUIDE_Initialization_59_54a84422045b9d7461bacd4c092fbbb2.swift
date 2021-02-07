class Product {

    let name: String

    init?(name: String) {

        if name.isEmpty { return nil }

        self.name = name

    }

}



class CartItem: Product {

    let quantity: Int

    init?(name: String, quantity: Int) {

        if quantity < 1 { return nil }

        self.quantity = quantity

        super.init(name: name)

    }

}