val lazyValue: String by lazy {
    println("computed!")
    "Hello"
}
​
fun main() {
    println(lazyValue)
    println(lazyValue)
}