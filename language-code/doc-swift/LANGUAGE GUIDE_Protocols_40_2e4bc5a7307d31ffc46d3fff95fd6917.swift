struct Hamster {

    var name: String

    var textualDescription: String {

        return "A hamster named \(name)"

    }

}

extension Hamster: TextRepresentable {}