var stringToEdit = TrackedString()

stringToEdit.value = "This string will be tracked."

stringToEdit.value += " This edit will increment numberOfEdits."

stringToEdit.value += " So will this one."

print("The number of edits is \(stringToEdit.numberOfEdits)")

// Prints "The number of edits is 3"