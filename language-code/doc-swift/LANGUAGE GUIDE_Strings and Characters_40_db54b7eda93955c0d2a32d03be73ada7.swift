val greeting = "Guten Tag!"

greeting[greeting.startIndex]

// G

greeting[greeting.index(before: greeting.endIndex)]

// !

greeting[greeting.index(after: greeting.startIndex)]

// u

val index = greeting.index(greeting.startIndex, offsetBy: 7)

greeting[index]

// a