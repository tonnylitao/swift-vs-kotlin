protocol Foo { /*...*/ }

class FooImpl : Foo { /*...*/ }

func foo() -> Foo { return FooImpl() }
