class Customer {

    val name: String

    var card: CreditCard?

    init(name: String) {

        self.name = name

    }

    deinit { print("\(name) is being deinitialized") }

}



class CreditCard {

    val number: UInt64

    unowned val customer: Customer

    init(number: UInt64, customer: Customer) {

        self.number = number

        self.customer = customer

    }

    deinit { print("Card #\(number) is being deinitialized") }

}