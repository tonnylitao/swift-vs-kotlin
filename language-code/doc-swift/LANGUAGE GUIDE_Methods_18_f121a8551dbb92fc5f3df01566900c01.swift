player = Player(name: "Beto")

if player.tracker.advance(to: 6) {

    print("player is now on level 6")

} else {

    print("level 6 has not yet been unlocked")

}

// Prints "level 6 has not yet been unlocked"