var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())

for _ in 1...5 {

    print("Random dice roll is \(d6.roll())")

}

// Random dice roll is 3

// Random dice roll is 5

// Random dice roll is 4

// Random dice roll is 5

// Random dice roll is 4