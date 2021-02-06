val service = MultiportService("https://example.kotlinlang.org", 80)
​
val result = service.run {
    port = 8080
    query(prepareRequest() + " to port $port")
}
​
// the same code written with let() function:
val letResult = service.let {
    it.port = 8080
    it.query(it.prepareRequest() + " to port ${it.port}")
}