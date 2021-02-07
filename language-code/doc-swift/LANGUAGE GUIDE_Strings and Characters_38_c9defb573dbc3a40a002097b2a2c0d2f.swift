var word = "cafe"

print("the number of characters in \(word) is \(word.count)")

// Prints "the number of characters in cafe is 4"



word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301



print("the number of characters in \(word) is \(word.count)")

// Prints "the number of characters in café is 4"