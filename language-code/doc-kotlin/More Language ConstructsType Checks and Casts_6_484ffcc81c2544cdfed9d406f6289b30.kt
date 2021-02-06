// x is automatically cast to string on the right-hand side of `||`
if (x !is String || x.length == 0) return
​
// x is automatically cast to string on the right-hand side of `&&`
if (x is String && x.length > 0) {
    print(x.length) // x is automatically cast to String
}