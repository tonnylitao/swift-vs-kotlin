protocol MyInterface {
    var prop: Int { get }
    
    var propertyWithImplementation: String { get }
    
    func foo()
}

extension MyInterface {
    var propertyWithImplementation: String {
        get { return "foo" }
    }
}

class Child: MyInterface {
    var prop: Int = 29
    
    func foo() {
        print(prop)
    }
}
