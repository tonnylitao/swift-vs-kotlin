infix operator +-: AdditionPrecedence

extension Vector2D {

    static func +- (left: Vector2D, right: Vector2D): Vector2D {

        return Vector2D(x: left.x + right.x, y: left.y - right.y)

    }

}

val firstVector = Vector2D(x: 1.0, y: 2.0)

val secondVector = Vector2D(x: 3.0, y: 4.0)

val plusMinusVector = firstVector +- secondVector

// plusMinusVector is a Vector2D instance with values of (4.0, -2.0)