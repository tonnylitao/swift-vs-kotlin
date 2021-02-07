struct Card {

    var rank: Rank

    var suit: Suit

    func simpleDescription(): String {

        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"

    }

}

val threeOfSpades = Card(rank: .three, suit: .spades)

val threeOfSpadesDescription = threeOfSpades.simpleDescription()