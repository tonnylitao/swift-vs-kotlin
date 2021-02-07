struct FlippedShape<T: Shape>: Shape {

    var shape: T

    func draw(): String {

        val lines = shape.draw().split(separator: "\n")

        return lines.reversed().joined(separator: "\n")

    }

}

val flippedTriangle = FlippedShape(shape: smallTriangle)

print(flippedTriangle.draw())

// ***

// **

// *