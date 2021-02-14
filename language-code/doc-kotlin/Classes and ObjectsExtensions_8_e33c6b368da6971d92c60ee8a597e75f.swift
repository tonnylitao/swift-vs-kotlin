class Example {
    func printFunctionType() { print("Class method") }
}

extension Example {
    func printFunctionType(i: Int) { print("Extension function") }
}

Example().printFunctionType(i: 1)
