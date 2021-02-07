class Player {

    var tracker = LevelTracker()

    val playerName: String

    func complete(level: Int) {

        LevelTracker.unlock(level + 1)

        tracker.advance(to: level + 1)

    }

    init(name: String) {

        playerName = name

    }

}