// ...
if (x == nil) {
    print("Wrong number format in arg1: '\(arg1)'")
    return
}
if (y == nil) {
    print("Wrong number format in arg2: '\(arg2)'")
    return
}
​
// x and y are automatically cast to non-nullable after null check
print(x * y)
