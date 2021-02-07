class DiceGameTracker: DiceGameDelegate {

    var numberOfTurns = 0

    func gameDidStart(_ game: DiceGame) {

        numberOfTurns = 0

        if game is SnakesAndLadders {

            print("Started a new game of Snakes and Ladders")

        }

        print("The game is using a \(game.dice.sides)-sided dice")

    }

    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int) {

        numberOfTurns += 1

        print("Rolled a \(diceRoll)")

    }

    func gameDidEnd(_ game: DiceGame) {

        print("The game lasted for \(numberOfTurns) turns")

    }

}