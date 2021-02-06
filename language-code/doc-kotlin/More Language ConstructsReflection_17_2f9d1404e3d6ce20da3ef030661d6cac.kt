fun length(s: String) = s.length
​
val oddLength = compose(::isOdd, ::length)
val strings = listOf("a", "ab", "abc")
​
println(strings.filter(oddLength))