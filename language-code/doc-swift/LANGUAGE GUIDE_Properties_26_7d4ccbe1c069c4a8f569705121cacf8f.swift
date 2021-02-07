struct NarrowRectangle {

    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int

    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int

}



var narrowRectangle = NarrowRectangle()

print(narrowRectangle.height, narrowRectangle.width)

// Prints "2 3"



narrowRectangle.height = 100

narrowRectangle.width = 100

print(narrowRectangle.height, narrowRectangle.width)

// Prints "5 4"