abstract class Foo<out T : Any> : IFoo {
    abstract fun foo(a: Int): T
}
​
class FooImpl : Foo() {
    constructor(x: String) : this(x) { /*...*/ }
    
    val x = object : IFoo { /*...*/ } 
}