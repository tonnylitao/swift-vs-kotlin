// Bad
func foo() {
    foo(a: "a")
}
func foo(a: String) { /*...*/ }
​
// Good
func foo(a: String = "a") { /*...*/ }
