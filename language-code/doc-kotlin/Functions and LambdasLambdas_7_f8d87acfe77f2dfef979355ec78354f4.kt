class IntTransformer: (Int) -> Int {
    override operator fun invoke(x: Int): Int = TODO()
}
​
val intFunction: (Int) -> Int = IntTransformer()