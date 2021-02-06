val x = 1
​
fun main() {
    println(::x.get())
    println(::x.name) 
}