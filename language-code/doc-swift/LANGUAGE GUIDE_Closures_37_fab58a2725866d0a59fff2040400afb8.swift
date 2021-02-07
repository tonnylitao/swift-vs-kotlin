struct SomeStruct {

    var x = 10

    mutating func doSomething() {

        someFunctionWithNonescapingClosure { x = 200 }  // Ok

        someFunctionWithEscapingClosure { x = 100 }     // Error

    }

}