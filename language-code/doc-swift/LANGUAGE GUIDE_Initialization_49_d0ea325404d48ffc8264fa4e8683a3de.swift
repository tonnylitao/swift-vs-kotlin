struct Animal {

    let species: String

    init?(species: String) {

        if species.isEmpty { return nil }

        self.species = species

    }

}