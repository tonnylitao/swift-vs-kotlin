val numbers = setOf(1, 2, 3, 4)  // LinkedHashSet is the default implementation
val numbersBackwards = setOf(4, 3, 2, 1)
​
println(numbers.first() == numbersBackwards.first())
println(numbers.first() == numbersBackwards.last())