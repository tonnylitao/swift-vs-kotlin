struct SomeStruct {

    private var privateVariable = 12

}



extension SomeStruct: SomeProtocol {

    func doSomething() {

        print(privateVariable)

    }

}