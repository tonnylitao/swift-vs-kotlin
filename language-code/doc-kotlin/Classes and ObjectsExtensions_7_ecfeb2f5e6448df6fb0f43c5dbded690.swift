class Example {
    func printFunctionType() { print("Class method") }
}
​
extension Example {
    //Error: Invalid redeclaration of 'printFunctionType()'
    func printFunctionType() { print("Extension function") }
}
​
Example().printFunctionType()
