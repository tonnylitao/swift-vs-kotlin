repeat {

    // move up or down for a snake or ladder

    square += board[square]

    // roll the dice

    diceRoll += 1

    if diceRoll == 7 { diceRoll = 1 }

    // move by the rolled amount

    square += diceRoll

} while square < finalSquare

print("Game over!")