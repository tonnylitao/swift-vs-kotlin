extension Array: TextRepresentable where Element: TextRepresentable {

    var textualDescription: String {

        let itemsAsText = self.map { $0.textualDescription }

        return "[" + itemsAsText.joined(separator: ", ") + "]"

    }

}

let myDice = [d6, d12]

print(myDice.textualDescription)

// Prints "[A 6-sided dice, A 12-sided dice]"