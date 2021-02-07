struct Player {

    var name: String

    var health: Int

    var energy: Int



    static val maxHealth = 10

    mutating func restoreHealth() {

        health = Player.maxHealth

    }

}