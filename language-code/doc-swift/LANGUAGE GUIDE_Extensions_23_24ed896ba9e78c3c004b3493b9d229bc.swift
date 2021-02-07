func printIntegerKinds(_ numbers: [Int]) {

    for number in numbers {

        switch number.kind {

        case .negative:

            print("- ", terminator: "")

        case .zero:

            print("0 ", terminator: "")

        case .positive:

            print("+ ", terminator: "")

        }

    }

    print("")

}

printIntegerKinds([3, 19, -27, 0, -6, 0, 7])

// Prints "+ + - 0 - 0 + "