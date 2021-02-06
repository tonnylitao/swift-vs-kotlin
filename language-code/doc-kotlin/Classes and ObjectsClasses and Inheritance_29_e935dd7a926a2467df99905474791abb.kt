open class Shape {
    open val vertexCount: Int = 0
}
​
class Rectangle : Shape() {
    override val vertexCount = 4
}