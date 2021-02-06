open class Shape {
    open fun draw() { /*...*/ }
    fun fill() { /*...*/ }
}
​
class Circle() : Shape() {
    override fun draw() { /*...*/ }
}