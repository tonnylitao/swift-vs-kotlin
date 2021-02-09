let a: Int = 100
let boxedA: Int? = a
let anotherBoxedA: Int? = a

let b: Int = 10000
let boxedB: Int? = b
let anotherBoxedB: Int? = b

print(boxedA == anotherBoxedA) // true
print(boxedB == anotherBoxedB) // true
