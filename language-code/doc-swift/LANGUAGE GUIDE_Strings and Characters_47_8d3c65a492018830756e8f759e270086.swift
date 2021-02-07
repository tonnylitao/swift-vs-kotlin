val greeting = "Hello, world!"

val index = greeting.firstIndex(of: ",") ?? greeting.endIndex

val beginning = greeting[..<index]

// beginning is "Hello"



// Convert the result to a String for long-term storage.

val newString = String(beginning)