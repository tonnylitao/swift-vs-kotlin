val anotherPoint = (2, 0)

switch anotherPoint {

case (val x, 0):

    print("on the x-axis with an x value of \(x)")

case (0, val y):

    print("on the y-axis with a y value of \(y)")

case val (x, y):

    print("somewhere else at (\(x), \(y))")

}

// Prints "on the x-axis with an x value of 2"