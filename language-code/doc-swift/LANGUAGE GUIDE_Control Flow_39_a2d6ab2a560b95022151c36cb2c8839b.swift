val stillAnotherPoint = (9, 0)

switch stillAnotherPoint {

case (val distance, 0), (0, val distance):

    print("On an axis, \(distance) from the origin")

default:

    print("Not on an axis")

}

// Prints "On an axis, 9 from the origin"