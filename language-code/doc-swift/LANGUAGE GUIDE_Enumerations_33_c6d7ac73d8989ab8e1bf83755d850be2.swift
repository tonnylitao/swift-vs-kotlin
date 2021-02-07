func evaluate(_ expression: ArithmeticExpression) -> Int {

    switch expression {

    case let .number(value):

        return value

    case let .addition(left, right):

        return evaluate(left) + evaluate(right)

    case let .multiplication(left, right):

        return evaluate(left) * evaluate(right)

    }

}



print(evaluate(product))

// Prints "18"