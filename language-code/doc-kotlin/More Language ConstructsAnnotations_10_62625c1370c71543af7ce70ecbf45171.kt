annotation class ReplaceWith(val expression: String)
​
annotation class Deprecated(
        val message: String,
        val replaceWith: ReplaceWith = ReplaceWith(""))
​
@Deprecated("This function is deprecated, use === instead", ReplaceWith("this === other"))