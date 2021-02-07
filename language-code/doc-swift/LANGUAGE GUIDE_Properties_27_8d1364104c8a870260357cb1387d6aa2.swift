struct MixedRectangle {

    @SmallNumber var height: Int = 1

    @SmallNumber(maximum: 9) var width: Int = 2

}



var mixedRectangle = MixedRectangle()

print(mixedRectangle.height)

// Prints "1"



mixedRectangle.height = 20

print(mixedRectangle.height)

// Prints "12"