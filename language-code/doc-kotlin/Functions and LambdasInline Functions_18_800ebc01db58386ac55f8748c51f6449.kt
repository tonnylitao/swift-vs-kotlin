val foo: Foo
    inline get() = Foo()
​
var bar: Bar
    get() = ...
    inline set(v) { ... }