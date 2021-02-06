// Bad
fun foo() = foo("a")
fun foo(a: String) { /*...*/ }
​
// Good
fun foo(a: String = "a") { /*...*/ }