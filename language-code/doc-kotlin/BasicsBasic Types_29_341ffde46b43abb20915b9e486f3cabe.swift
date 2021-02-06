// Array of int of size 5 with values [0, 0, 0, 0, 0]
let arr = Array(repeating: 0, count: 5)
​
// e.g. initialise the values in the array with a constant
// Array of int of size 5 with values [42, 42, 42, 42, 42]
let arr = Array(repeating: 42, count: 5)
​
// e.g. initialise the values in the array using a lambda
// Array of int of size 5 with values [0, 1, 2, 3, 4] (values initialised to their index value)
var arr = (0..<5).map { $0 }
