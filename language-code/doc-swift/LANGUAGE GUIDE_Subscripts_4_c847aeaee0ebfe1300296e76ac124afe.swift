struct TimesTable {

    val multiplier: Int

    subscript(index: Int): Int {

        return multiplier * index

    }

}

val threeTimesTable = TimesTable(multiplier: 3)

print("six times three is \(threeTimesTable[6])")

// Prints "six times three is 18"