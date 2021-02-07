class LinearCongruentialGenerator: RandomNumberGenerator {

    var lastRandom = 42.0

    val m = 139968.0

    val a = 3877.0

    val c = 29573.0

    func random(): Double {

        lastRandom = ((lastRandom * a + c)

            .truncatingRemainder(dividingBy:m))

        return lastRandom / m

    }

}

val generator = LinearCongruentialGenerator()

print("Here's a random number: \(generator.random())")

// Prints "Here's a random number: 0.3746499199817101"

print("And another one: \(generator.random())")

// Prints "And another one: 0.729023776863283"