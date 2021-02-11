protocol A {
    func foo()
    func bar()
}
extension A {
    func foo() { print("A") }
}


protocol B {
    func foo()
    func bar()
}
extension B {
    func foo() { print("B") }
    func bar() { print("bar") }
}


class C: A {
    func bar() { print("bar") }
}

//call default implementation in method is not supportted
