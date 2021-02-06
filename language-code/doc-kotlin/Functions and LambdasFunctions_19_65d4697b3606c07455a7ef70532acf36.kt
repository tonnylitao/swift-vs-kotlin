fun foo(vararg strings: String) { /*...*/ }
​
foo(strings = *arrayOf("a", "b", "c"))