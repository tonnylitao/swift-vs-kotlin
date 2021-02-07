func someFunction() {

    var oscar = Player(name: "Oscar", health: 10, energy: 10)

    balance(&oscar.health, &oscar.energy)  // OK

}