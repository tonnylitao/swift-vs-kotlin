let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]

if let foundIndex = findIndex(ofString: "llama", in: strings) {

    print("The index of llama is \(foundIndex)")

}

// Prints "The index of llama is 2"