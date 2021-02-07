func balance(_ x: inout Int, _ y: inout Int) {

    let sum = x + y

    x = sum / 2

    y = sum - x

}

var playerOneScore = 42

var playerTwoScore = 30

balance(&playerOneScore, &playerTwoScore)  // OK

balance(&playerOneScore, &playerOneScore)

// Error: conflicting accesses to playerOneScore