public class SomePublicClass {                  // explicitly public class

    public var somePublicProperty = 0            // explicitly public class member

    var someInternalProperty = 0                 // implicitly internal class member

    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member

    private func somePrivateMethod() {}          // explicitly private class member

}



class SomeInternalClass {                       // implicitly internal class

    var someInternalProperty = 0                 // implicitly internal class member

    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member

    private func somePrivateMethod() {}          // explicitly private class member

}



fileprivate class SomeFilePrivateClass {        // explicitly file-private class

    func someFilePrivateMethod() {}              // implicitly file-private class member

    private func somePrivateMethod() {}          // explicitly private class member

}



private class SomePrivateClass {                // explicitly private class

    func somePrivateMethod() {}                  // implicitly private class member

}