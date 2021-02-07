if let removedValue = airports.removeValue(forKey: "DUB") {

    print("The removed airport's name is \(removedValue).")

} else {

    print("The airports dictionary does not contain a value for DUB.")

}

// Prints "The removed airport's name is Dublin Airport."