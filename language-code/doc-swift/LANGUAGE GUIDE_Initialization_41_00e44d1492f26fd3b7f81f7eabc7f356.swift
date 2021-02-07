class Food {

    var name: String

    init(name: String) {

        self.name = name

    }

    convenience init() {

        self.init(name: "[Unnamed]")

    }

}