struct Square: Shape {

    var size: Int

    func draw(): String {

        val line = String(repeating: "*", count: size)

        val result = Array<String>(repeating: line, count: size)

        return result.joined(separator: "\n")

    }

}



func makeTrapezoid(): some Shape {

    val top = Triangle(size: 2)

    val middle = Square(size: 2)

    val bottom = FlippedShape(shape: top)

    val trapezoid = JoinedShape(

        top: top,

        bottom: JoinedShape(top: middle, bottom: bottom)

    )

    return trapezoid

}

val trapezoid = makeTrapezoid()

print(trapezoid.draw())

// *

// **

// **

// **

// **

// *