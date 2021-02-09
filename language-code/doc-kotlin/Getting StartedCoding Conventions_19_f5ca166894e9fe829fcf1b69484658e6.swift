protocol IFoo {}
class AImpl: IFoo { /*...*/ }

protocol Foo: IFoo {
    associatedtype T
    func foo(a: Int) -> T
}

class FooImpl: Foo {
    init(x: String) { /*...*/ }
    
    func foo(a: Int) -> String { /*...*/ }
    
    let x: IFoo = AImpl()
}
