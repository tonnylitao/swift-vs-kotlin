protocol Base {
    func printMessage()
    func printMessageLine()
}

class BaseImpl: Base {
    private var x = 0
    init(x: Int) {
        self.x = x
    }
    
    func printMessage() { print(x) }
    func printMessageLine() { print(x) }
}

class Derived: Base {
    private var b: Base
    init(_ b: Base) {
        self.b = b
    }
    
    func printMessage() { b.printMessage() }
    func printMessageLine() { print("abc") }
}


let b = BaseImpl(x: 10)
Derived(b).printMessage()
Derived(b).printMessageLine()
