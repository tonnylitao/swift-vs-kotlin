enum CompassPoint {

    case north, south, east, west

    mutating func turnNorth() {

        self = .north

    }

}

var currentDirection = CompassPoint.west

val rememberedDirection = currentDirection

currentDirection.turnNorth()



print("The current direction is \(currentDirection)")

print("The remembered direction is \(rememberedDirection)")

// Prints "The current direction is north"

// Prints "The remembered direction is west"