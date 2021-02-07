val oddDigits: Set = [1, 3, 5, 7, 9]

val evenDigits: Set = [0, 2, 4, 6, 8]

val singleDigitPrimeNumbers: Set = [2, 3, 5, 7]



oddDigits.union(evenDigits).sorted()

// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

oddDigits.intersection(evenDigits).sorted()

// []

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

// [1, 9]

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

// [1, 2, 9]