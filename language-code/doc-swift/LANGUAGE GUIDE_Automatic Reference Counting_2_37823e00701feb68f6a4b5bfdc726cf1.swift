class Person {

    val name: String

    init(name: String) {

        self.name = name

        print("\(name) is being initialized")

    }

    deinit {

        print("\(name) is being deinitialized")

    }

}