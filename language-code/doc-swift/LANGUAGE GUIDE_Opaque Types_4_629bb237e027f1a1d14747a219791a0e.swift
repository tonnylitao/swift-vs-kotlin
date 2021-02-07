struct JoinedShape<T: Shape, U: Shape>: Shape {

    var top: T

    var bottom: U

    func draw(): String {

        return top.draw() + "\n" + bottom.draw()

    }

}

val joinedTriangles = JoinedShape(top: smallTriangle, bottom: flippedTriangle)

print(joinedTriangles.draw())

// *

// **

// ***

// ***

// **

// *