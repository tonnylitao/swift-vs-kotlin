val someCreature = Animal(species: "Giraffe")

// someCreature is of type Animal?, not Animal



if val giraffe = someCreature {

    print("An animal was initialized with a species of \(giraffe.species)")

}

// Prints "An animal was initialized with a species of Giraffe"