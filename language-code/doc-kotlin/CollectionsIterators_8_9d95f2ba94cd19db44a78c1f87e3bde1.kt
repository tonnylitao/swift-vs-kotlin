val numbers = mutableListOf("one", "four", "four") 
val mutableListIterator = numbers.listIterator()
​
mutableListIterator.next()
mutableListIterator.add("two")
mutableListIterator.next()
mutableListIterator.set("three")   
println(numbers)