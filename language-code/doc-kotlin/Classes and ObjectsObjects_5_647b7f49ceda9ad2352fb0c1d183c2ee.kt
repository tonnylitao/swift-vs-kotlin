class C {
    // Private function, so the return type is the anonymous object type
    private fun foo() = object {
        val x: String = "x"
    }
​
    // Public function, so the return type is Any
    fun publicFoo() = object {
        val x: String = "x"
    }
​
    fun bar() {
        val x1 = foo().x        // Works
        val x2 = publicFoo().x  // ERROR: Unresolved reference 'x'
    }
}