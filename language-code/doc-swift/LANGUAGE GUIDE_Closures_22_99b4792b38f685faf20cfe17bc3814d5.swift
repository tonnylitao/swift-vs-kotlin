let strings = numbers.map { (number) -> String in

    var number = number

    var output = ""

    repeat {

        output = digitNames[number % 10]! + output

        number /= 10

    } while number > 0

    return output

}

// strings is inferred to be of type [String]

// its value is ["OneSix", "FiveEight", "FiveOneZero"]