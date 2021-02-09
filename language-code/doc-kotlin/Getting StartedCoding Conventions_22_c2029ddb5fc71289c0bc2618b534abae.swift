class Human {
    var id: Int = 0
    var name: String = ""

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Person: Human {
    var surname: String = ""

    init(id: Int, name: String, surname: String) {
        super.init(id: id, name: name)
    }
}
