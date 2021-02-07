class Person {

    let name: String

    init(name: String) { self.name = name }

    var apartment: Apartment?

    deinit { print("\(name) is being deinitialized") }

}



class Apartment {

    let unit: String

    init(unit: String) { self.unit = unit }

    var tenant: Person?

    deinit { print("Apartment \(unit) is being deinitialized") }

}