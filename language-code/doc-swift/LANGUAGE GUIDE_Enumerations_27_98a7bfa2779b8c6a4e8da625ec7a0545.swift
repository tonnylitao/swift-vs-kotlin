val positionToFind = 11

if val somePlanet = Planet(rawValue: positionToFind) {

    switch somePlanet {

    case .earth:

        print("Mostly harmless")

    default:

        print("Not a safe place for humans")

    }

} else {

    print("There isn't a planet at position \(positionToFind)")

}

// Prints "There isn't a planet at position 11"