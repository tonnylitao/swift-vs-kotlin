/*
 open and public
 Open access and public access enable entities to be used within any source file from their defining module
 */
open class A { //open for class, allowing code outside the module to subclass and override
    open var a: Int = 0
}

public struct B {
    public var b: Int = 0
}


/*
 internal, default
 Internal access enables entities to be used within any source file from their defining module
 */
internal let a = ""
let someInternalConstant = 0 // implicitly internal
class C { } // implicitly internal


/*
 fileprivate
 File-private access restricts the use of an entity to its own defining source file
 */
fileprivate let b = ""


/*
 private
 Private access restricts the use of an entity to the enclosing declaration, and to extensions of that declaration that are in the same file.
 */
class D {
    private let d = 0
}
extension D {
    func foo() {
        print(d)
    }
}

//👏
