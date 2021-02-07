let anonymousCreature = Animal(species: "")

// anonymousCreature is of type Animal?, not Animal



if anonymousCreature == nil {

    print("The anonymous creature could not be initialized")

}

// Prints "The anonymous creature could not be initialized"