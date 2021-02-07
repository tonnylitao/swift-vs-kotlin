protocol SomeProtocol {

    init()

}



class SomeSuperClass {

    init() {

        // initializer implementation goes here

    }

}



class SomeSubClass: SomeSuperClass, SomeProtocol {

    // "required" from SomeProtocol conformance; "override" from SomeSuperClass

    required override init() {

        // initializer implementation goes here

    }

}