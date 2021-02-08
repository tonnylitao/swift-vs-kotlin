let a: Int = 10000
print(a == a) // Prints 'true'
let boxedA: Int? = a
let anotherBoxedA: Int? = a
print(boxedA == anotherBoxedA) // Prints 'true'