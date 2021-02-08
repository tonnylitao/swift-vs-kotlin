class Turtle {
    func penDown() {}
    func penUp() {}
    func turn(degrees: Double) {}
    func forward(pixels: Double) {}
}

extension Turtle {
  func with(_ block: (Turtle) -> Void) {
    block(self)
  }
}

let myTurtle = Turtle()
myTurtle.with { //draw a 100 pix square
    $0.penDown()
    for _ in 1...4 {
        $0.forward(pixels: 100.0)
        $0.turn(degrees: 90.0)
    }
    $0.penUp()
}

//-👏
