fileprivate func foo() { ... } // visible inside example.swift

public private (set) var bar: Int = 5 // property is visible everywhere
// setter is visible only in A

internal let baz = 6    // visible inside the same module

