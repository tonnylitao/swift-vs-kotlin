class Rectangle {
    func draw() { print("Drawing a rectangle") }
    var borderColor: String {
        get { "black" }
    }
}

class FilledRectangle: Rectangle {
    override func draw() {
        super.draw()
        print("Filling the rectangle")
    }
    
    var fillColor: String {
        get { super.borderColor }
    }
}
