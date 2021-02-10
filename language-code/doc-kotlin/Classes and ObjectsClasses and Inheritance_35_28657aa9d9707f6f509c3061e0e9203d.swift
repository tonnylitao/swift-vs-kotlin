class Rectangle {
    func draw() { print("Rectangle")/* ... */ }
}

protocol Polygon {
    func draw()
}
extension Polygon {
    func draw() { print("Polygon")/* ... */ }
}

class Square: Rectangle, Polygon {
    // The compiler requires draw() to be overridden:
    override func draw() {
        super.draw() // call to Rectangle.draw()
    }
}
