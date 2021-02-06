func printProduct(arg1: String, arg2: String) {
    let x = parseInt(arg1)
    let y = parseInt(arg2)
​
    // Using `x * y` yields error because they may hold nulls.
    if (x != nil && y != nil) {
        // x and y are automatically cast to non-nullable after null check
        print(x * y)
    }
    else {
        print("'\(arg1)' or '\(arg2)' is not a number")
    }    
}
