val numbersMap = mutableMapOf("one" to 1, "two" to 2)
numbersMap["three"] = 3     // calls numbersMap.set("three", 3)
numbersMap += mapOf("four" to 4, "five" to 5)
println(numbersMap)