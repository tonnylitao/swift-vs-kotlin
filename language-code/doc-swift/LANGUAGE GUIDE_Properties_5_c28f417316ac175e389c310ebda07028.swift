let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

// this range represents integer values 0, 1, 2, and 3

rangeOfFourItems.firstValue = 6

// this will report an error, even though firstValue is a variable property