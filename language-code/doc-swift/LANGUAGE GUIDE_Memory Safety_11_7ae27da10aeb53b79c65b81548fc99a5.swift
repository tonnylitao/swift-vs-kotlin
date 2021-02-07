struct Player {

    var name: String

    var health: Int

    var energy: Int



    static let maxHealth = 10

    mutating func restoreHealth() {

        health = Player.maxHealth

    }

}