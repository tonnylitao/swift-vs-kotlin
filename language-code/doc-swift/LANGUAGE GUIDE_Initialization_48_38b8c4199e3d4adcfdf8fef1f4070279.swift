let wholeNumber: Double = 12345.0

let pi = 3.14159



if let valueMaintained = Int(exactly: wholeNumber) {

    print("\(wholeNumber) conversion to Int maintains value of \(valueMaintained)")

}

// Prints "12345.0 conversion to Int maintains value of 12345"



let valueChanged = Int(exactly: pi)

// valueChanged is of type Int?, not Int



if valueChanged == nil {

    print("\(pi) conversion to Int does not maintain value")

}

// Prints "3.14159 conversion to Int does not maintain value"