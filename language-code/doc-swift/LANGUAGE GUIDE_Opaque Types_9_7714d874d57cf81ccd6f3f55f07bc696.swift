func invalidFlip<T: Shape>(_ shape: T) -> some Shape {

    if shape is Square {

        return shape // Error: return types don't match

    }

    return FlippedShape(shape: shape) // Error: return types don't match

}