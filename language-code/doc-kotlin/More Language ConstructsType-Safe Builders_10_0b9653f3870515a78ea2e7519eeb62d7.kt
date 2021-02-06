fun head(init: Head.() -> Unit) = initTag(Head(), init)
​
fun body(init: Body.() -> Unit) = initTag(Body(), init)