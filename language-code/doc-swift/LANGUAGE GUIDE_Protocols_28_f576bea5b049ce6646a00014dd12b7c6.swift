protocol DiceGame {

    var dice: Dice { get }

    func play()

}

protocol DiceGameDelegate: AnyObject {

    func gameDidStart(_ game: DiceGame)

    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll diceRoll: Int)

    func gameDidEnd(_ game: DiceGame)

}