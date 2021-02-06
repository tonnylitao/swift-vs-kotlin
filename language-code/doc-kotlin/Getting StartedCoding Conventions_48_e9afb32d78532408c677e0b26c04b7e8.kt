when (foo) {
    true -> bar() // good
    false -> { baz() } // bad
}