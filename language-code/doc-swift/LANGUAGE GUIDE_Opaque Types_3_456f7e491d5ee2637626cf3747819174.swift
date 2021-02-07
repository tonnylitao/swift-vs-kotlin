struct FlippedShape<T: Shape>: Shape {

    var shape: T

    func draw() -> String {

        let lines = shape.draw().split(separator: "\n")

        return lines.reversed().joined(separator: "\n")

    }

}

let flippedTriangle = FlippedShape(shape: smallTriangle)

print(flippedTriangle.draw())

// ***

// **

// *