//client code
@OptIn(MyDateTime::class)
fun getDate(): Date { // Uses DateProvider; doesn't propagate the opt-in requirement
    val dateProvider: DateProvider
    // ...
}
​
fun displayDate() {
    println(getDate()) // OK: opt-in is not required
}