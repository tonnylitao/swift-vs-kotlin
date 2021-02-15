protocol Base {
    var message: String { get }
    func print()
}

class BaseImpl: Base {
    private var x = 0
    init(x: Int) {
        self.x = x
    }
    
    var message: String {
        get { "BaseImpl: x = \(x)" }
    }
    
    func print() { Swift.print(message) }
}

class Derived: Base {
    private var b: Base
    init(_ b: Base) {
        self.b = b
    }
    
    let message = "Message of Derived"
    
    func print() { b.print() }
}

let b = BaseImpl(x: 10)
let derived = Derived(b)
derived.print()
print(derived.message)
