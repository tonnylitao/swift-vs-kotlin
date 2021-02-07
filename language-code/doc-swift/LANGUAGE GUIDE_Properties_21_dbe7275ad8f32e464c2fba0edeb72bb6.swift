struct SmallRectangle {

    @TwelveOrLess var height: Int

    @TwelveOrLess var width: Int

}



var rectangle = SmallRectangle()

print(rectangle.height)

// Prints "0"



rectangle.height = 10

print(rectangle.height)

// Prints "10"



rectangle.height = 24

print(rectangle.height)

// Prints "12"