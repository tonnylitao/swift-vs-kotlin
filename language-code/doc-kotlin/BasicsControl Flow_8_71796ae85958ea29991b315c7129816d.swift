switch x {
case 1...10:
    print("x is in the range")
case let x where validNumbers.contains(x):
    print("x is valid")
case let x where 10...20 ~= x:
    print("x is outside the range")
default:
    print("none of the above")
}
