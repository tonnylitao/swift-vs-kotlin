struct SomeStructure {

    static var storedTypeProperty = "Some value."

    static var computedTypeProperty: Int {

        return 1

    }

}

enum SomeEnumeration {

    static var storedTypeProperty = "Some value."

    static var computedTypeProperty: Int {

        return 6

    }

}

class SomeClass {

    static var storedTypeProperty = "Some value."

    static var computedTypeProperty: Int {

        return 27

    }

    class var overrideableComputedTypeProperty: Int {

        return 107

    }

}