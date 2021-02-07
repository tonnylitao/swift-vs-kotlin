var player = Player(name: "Argyrios")

player.complete(level: 1)

print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

// Prints "highest unlocked level is now 2"