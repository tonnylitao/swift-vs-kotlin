fun displaySubstringPosition(input: String, sub: String) {
    val index = input.indexOf(sub)
    if (index >= 0) {
        println("The substring $sub is found in $input.")
        println("Its start position is $index.")
    }
}
​
displaySubstringPosition("010000011", "11")
displaySubstringPosition("010000011", "12")