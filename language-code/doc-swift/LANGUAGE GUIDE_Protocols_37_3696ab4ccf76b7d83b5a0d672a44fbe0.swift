extension Array: TextRepresentable where Element: TextRepresentable {

    var textualDescription: String {

        val itemsAsText = self.map { it.textualDescription }

        return "[" + itemsAsText.joined(separator: ", ") + "]"

    }

}

val myDice = [d6, d12]

print(myDice.textualDescription)

// Prints "[A 6-sided dice, A 12-sided dice]"