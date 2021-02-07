struct Vector2D {

    var x = 0.0, y = 0.0

}



extension Vector2D {

    static func + (left: Vector2D, right: Vector2D): Vector2D {

        return Vector2D(x: left.x + right.x, y: left.y + right.y)

    }

}