func greeting(for person: String) -> String {

    "Hello, " + person + "!"

}

print(greeting(for: "Dave"))

// Prints "Hello, Dave!"



func anotherGreeting(for person: String) -> String {

    return "Hello, " + person + "!"

}

print(anotherGreeting(for: "Dave"))

// Prints "Hello, Dave!"