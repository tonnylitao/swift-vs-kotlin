if val firstNumber = Int("4"), val secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {

    print("\(firstNumber) < \(secondNumber) < 100")

}

// Prints "4 < 42 < 100"



if val firstNumber = Int("4") {

    if val secondNumber = Int("42") {

        if firstNumber < secondNumber && secondNumber < 100 {

            print("\(firstNumber) < \(secondNumber) < 100")

        }

    }

}

// Prints "4 < 42 < 100"