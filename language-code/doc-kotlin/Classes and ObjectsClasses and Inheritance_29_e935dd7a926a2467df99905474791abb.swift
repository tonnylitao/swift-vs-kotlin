class Shape {
    var vertexCount: Int = 0
}

class Rectangle: Shape {
    override init() {
        super.init()
        vertexCount = 4
    }
}
