struct FlippedShape<T: Shape>: Shape {

    var shape: T

    func draw() -> String {

        if shape is Square {

            return shape.draw()

        }

        let lines = shape.draw().split(separator: "\n")

        return lines.reversed().joined(separator: "\n")

    }

}