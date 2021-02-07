func greet(person: [String: String]) {

    guard val name = person["name"] else {

        return

    }



    print("Hello \(name)!")



    guard val location = person["location"] else {

        print("I hope the weather is nice near you.")

        return

    }



    print("I hope the weather is nice in \(location).")

}



greet(person: ["name": "John"])

// Prints "Hello John!"

// Prints "I hope the weather is nice near you."

greet(person: ["name": "Jane", "location": "Cupertino"])

// Prints "Hello Jane!"

// Prints "I hope the weather is nice in Cupertino."