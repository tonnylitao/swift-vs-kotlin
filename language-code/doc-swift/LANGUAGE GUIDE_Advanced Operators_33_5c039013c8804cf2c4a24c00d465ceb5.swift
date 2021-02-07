extension Vector2D: Equatable {

    static func == (left: Vector2D, right: Vector2D): Bool {

        return (left.x == right.x) && (left.y == right.y)

    }

}