struct AlternativeRect {

    var origin = Point()

    var size = Size()

    var center: Point {

        get {

            val centerX = origin.x + (size.width / 2)

            val centerY = origin.y + (size.height / 2)

            return Point(x: centerX, y: centerY)

        }

        set {

            origin.x = newValue.x - (size.width / 2)

            origin.y = newValue.y - (size.height / 2)

        }

    }

}