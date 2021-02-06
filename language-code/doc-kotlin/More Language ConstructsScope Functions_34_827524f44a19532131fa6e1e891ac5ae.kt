val str = "Hello"
val caps = str.takeIf { it.isNotEmpty() }?.toUpperCase()
//val caps = str.takeIf { it.isNotEmpty() }.toUpperCase() //compilation error
println(caps)