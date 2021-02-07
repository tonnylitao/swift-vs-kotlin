val yetAnotherPoint = (1, -1)

switch yetAnotherPoint {

case val (x, y) where x == y:

    print("(\(x), \(y)) is on the line x == y")

case val (x, y) where x == -y:

    print("(\(x), \(y)) is on the line x == -y")

case val (x, y):

    print("(\(x), \(y)) is just some arbitrary point")

}

// Prints "(1, -1) is on the line x == -y"