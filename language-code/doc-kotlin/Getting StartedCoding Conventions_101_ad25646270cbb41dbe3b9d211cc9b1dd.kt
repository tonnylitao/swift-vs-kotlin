return if (x) foo() else bar()
​
return when(x) {
    0 -> "zero"
    else -> "nonzero"
}