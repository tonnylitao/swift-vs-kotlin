class Player {

    var coinsInPurse: Int

    init(coins: Int) {

        coinsInPurse = Bank.distribute(coins: coins)

    }

    func win(coins: Int) {

        coinsInPurse += Bank.distribute(coins: coins)

    }

    deinit {

        Bank.receive(coins: coinsInPurse)

    }

}