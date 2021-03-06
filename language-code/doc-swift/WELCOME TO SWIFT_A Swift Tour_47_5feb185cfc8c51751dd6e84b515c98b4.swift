extension Int: ExampleProtocol {

    var simpleDescription: String {

        return "The number \(self)"

    }

    mutating func adjust() {

        self += 42

    }

}

print(7.simpleDescription)

// Prints "The number 7"