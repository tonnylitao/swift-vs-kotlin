extension Player {

    mutating func shareHealth(with teammate: inout Player) {

        balance(&teammate.health, &health)

    }

}



var oscar = Player(name: "Oscar", health: 10, energy: 10)

var maria = Player(name: "Maria", health: 5, energy: 10)

oscar.shareHealth(with: &maria)  // OK