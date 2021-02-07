class SomeOtherClass {

    var x = 10

    func doSomething() {

        someFunctionWithEscapingClosure { [self] in x = 100 }

        someFunctionWithNonescapingClosure { x = 200 }

    }

}