protocol Base {
    func print()
}

class BaseImpl: Base {
    private var x = 0
    init(x: Int) {
        self.x = x
    }
    
    func print() { Swift.print(x) }
}

class Derived: Base {
    private var b: Base
    init(_ b: Base) {
        self.b = b
    }
    
    func print() {
        b.print()
    }
}


let b = BaseImpl(x: 10)
Derived(b).print()
