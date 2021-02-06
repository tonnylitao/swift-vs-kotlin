val numbers = mutableListOf(1, 2, 3, 4, 3)    
numbers.removeFirst()
numbers.removeLast()
println(numbers)
​
val empty = mutableListOf<Int>()
// empty.removeFirst() // NoSuchElementException: List is empty.
empty.removeFirstOrNull() //null