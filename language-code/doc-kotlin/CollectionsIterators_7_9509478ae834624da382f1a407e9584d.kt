val numbers = mutableListOf("one", "two", "three", "four") 
val mutableIterator = numbers.iterator()
​
mutableIterator.next()
mutableIterator.remove()    
println("After removal: $numbers")