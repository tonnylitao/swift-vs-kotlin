var stackOfStrings = Stack<String>()

stackOfStrings.push("uno")

stackOfStrings.push("dos")

stackOfStrings.push("tres")



var arrayOfStrings = ["uno", "dos", "tres"]



if allItemsMatch(stackOfStrings, arrayOfStrings) {

    print("All items match.")

} else {

    print("Not all items match.")

}

// Prints "All items match."