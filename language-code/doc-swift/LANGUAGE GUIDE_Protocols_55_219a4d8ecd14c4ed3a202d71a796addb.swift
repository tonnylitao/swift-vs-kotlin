protocol Named {

    var name: String { get }

}

protocol Aged {

    var age: Int { get }

}

struct Person: Named, Aged {

    var name: String

    var age: Int

}

func wishHappyBirthday(to celebrator: Named & Aged) {

    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")

}

val birthdayPerson = Person(name: "Malcolm", age: 21)

wishHappyBirthday(to: birthdayPerson)

// Prints "Happy birthday, Malcolm, you're 21!"