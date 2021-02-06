val colors = listOf("red", "brown", "grey")
val animals = listOf("fox", "bear", "wolf")
​
println(colors.zip(animals) { color, animal -> "The ${animal.capitalize()} is $color"})