func evaluate(_ expression: ArithmeticExpression): Int {

    switch expression {

    case val .number(value):

        return value

    case val .addition(left, right):

        return evaluate(left) + evaluate(right)

    case val .multiplication(left, right):

        return evaluate(left) * evaluate(right)

    }

}



print(evaluate(product))

// Prints "18"