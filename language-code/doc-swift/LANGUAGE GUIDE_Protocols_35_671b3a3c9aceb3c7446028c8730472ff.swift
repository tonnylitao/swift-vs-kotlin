extension SnakesAndLadders: TextRepresentable {

    var textualDescription: String {

        return "A game of Snakes and Ladders with \(finalSquare) squares"

    }

}

print(game.textualDescription)

// Prints "A game of Snakes and Ladders with 25 squares"