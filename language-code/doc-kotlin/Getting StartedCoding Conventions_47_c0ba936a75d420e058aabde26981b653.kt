private fun parsePropertyValue(propName: String, token: Token) {
    when (token) {
        is Token.ValueToken ->
            callback.visitValue(propName, token.value)
​
        Token.LBRACE -> { // ...
        }
    }
}