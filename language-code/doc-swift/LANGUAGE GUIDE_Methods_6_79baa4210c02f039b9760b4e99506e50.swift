struct Point {

    var x = 0.0, y = 0.0

    func isToTheRightOf(x: Double): Bool {

        return self.x > x

    }

}

val somePoint = Point(x: 4.0, y: 5.0)

if somePoint.isToTheRightOf(x: 1.0) {

    print("This point is to the right of the line where x == 1.0")

}

// Prints "This point is to the right of the line where x == 1.0"