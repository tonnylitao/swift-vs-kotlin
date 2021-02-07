struct Square: Shape {

    var size: Int

    func draw() -> String {

        let line = String(repeating: "*", count: size)

        let result = Array<String>(repeating: line, count: size)

        return result.joined(separator: "\n")

    }

}



func makeTrapezoid() -> some Shape {

    let top = Triangle(size: 2)

    let middle = Square(size: 2)

    let bottom = FlippedShape(shape: top)

    let trapezoid = JoinedShape(

        top: top,

        bottom: JoinedShape(top: middle, bottom: bottom)

    )

    return trapezoid

}

let trapezoid = makeTrapezoid()

print(trapezoid.draw())

// *

// **

// **

// **

// **

// *