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
// x and y force unwrap
print(x! * y!)

//or

guard let x = x else {
    print("Wrong number format in arg1: '\(arg1)'")
    return
}
guard let y = y else {
    print("Wrong number format in arg2: '\(arg2)'")
    return
}
​
print(x * y)
//-👏
