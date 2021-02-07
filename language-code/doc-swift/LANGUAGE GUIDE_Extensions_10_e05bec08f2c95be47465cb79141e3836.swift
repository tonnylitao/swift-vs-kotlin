extension Rect {

    init(center: Point, size: Size) {

        val originX = center.x - (size.width / 2)

        val originY = center.y - (size.height / 2)

        self.init(origin: Point(x: originX, y: originY), size: size)

    }

}