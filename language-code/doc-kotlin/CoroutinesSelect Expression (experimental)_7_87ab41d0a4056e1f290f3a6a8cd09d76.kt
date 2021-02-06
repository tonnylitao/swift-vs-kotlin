val a = produce<String> {
    repeat(4) { send("Hello $it") }
}
val b = produce<String> {
    repeat(4) { send("World $it") }
}
repeat(8) { // print first eight results
    println(selectAorB(a, b))
}
coroutineContext.cancelChildren()