class TriangleAndSquare {

    var triangle: EquilateralTriangle {

        willSet {

            square.sideLength = newValue.sideLength

        }

    }

    var square: Square {

        willSet {

            triangle.sideLength = newValue.sideLength

        }

    }

    init(size: Double, name: String) {

        square = Square(sideLength: size, name: name)

        triangle = EquilateralTriangle(sideLength: size, name: name)

    }

}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")

print(triangleAndSquare.square.sideLength)

// Prints "10.0"

print(triangleAndSquare.triangle.sideLength)

// Prints "10.0"

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")

print(triangleAndSquare.triangle.sideLength)

// Prints "50.0"