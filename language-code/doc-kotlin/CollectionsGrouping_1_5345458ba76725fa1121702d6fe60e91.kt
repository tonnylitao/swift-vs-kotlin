val numbers = listOf("one", "two", "three", "four", "five")
​
println(numbers.groupBy { it.first().toUpperCase() })
println(numbers.groupBy(keySelector = { it.first() }, valueTransform = { it.toUpperCase() }))