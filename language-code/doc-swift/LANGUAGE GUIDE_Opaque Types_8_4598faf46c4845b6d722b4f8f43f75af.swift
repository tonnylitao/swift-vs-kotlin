func flip<T: Shape>(_ shape: T): some Shape {

    return FlippedShape(shape: shape)

}

func join<T: Shape, U: Shape>(_ top: T, _ bottom: U): some Shape {

    JoinedShape(top: top, bottom: bottom)

}



val opaqueJoinedTriangles = join(smallTriangle, flip(smallTriangle))

print(opaqueJoinedTriangles.draw())

// *

// **

// ***

// ***

// **

// *