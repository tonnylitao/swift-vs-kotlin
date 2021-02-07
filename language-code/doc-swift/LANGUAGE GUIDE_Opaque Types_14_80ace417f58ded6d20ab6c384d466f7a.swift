func protoFlip<T: Shape>(_ shape: T) -> Shape {

    if shape is Square {

        return shape

    }



    return FlippedShape(shape: shape)

}