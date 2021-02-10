protocol Shape {
    var vertexCount: Int { get }
}

class Rectangle: Shape {
    let vertexCount: Int = 4
}

class Polygon : Shape {
    var vertexCount: Int = 0  // Can be set to any number later
}
