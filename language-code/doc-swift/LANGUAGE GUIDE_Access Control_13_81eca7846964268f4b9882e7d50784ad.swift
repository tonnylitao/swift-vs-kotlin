public class A {

    fileprivate func someMethod() {}

}



internal class B: A {

    override internal func someMethod() {

        super.someMethod()

    }

}