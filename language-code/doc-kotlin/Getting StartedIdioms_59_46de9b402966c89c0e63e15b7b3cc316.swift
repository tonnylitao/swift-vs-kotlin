struct Rectangle {
    var length: Int?
    var breadth: Int?
    var color: Int?
}

extension Rectangle {
    func apply(_ block: (inout Rectangle) -> Void) -> Rectangle {
        var rect = self
        block(&rect)
        return rect
    }
}

let myRectangle = Rectangle().apply {
    $0.length = 4
    $0.breadth = 5
    $0.color = 0xFAFAFA
}

//-👏
