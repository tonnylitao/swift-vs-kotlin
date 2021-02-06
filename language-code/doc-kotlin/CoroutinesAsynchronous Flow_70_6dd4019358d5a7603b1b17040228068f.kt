// Imitate a flow of events
fun events(): Flow<Int> = (1..3).asFlow().onEach { delay(100) }
​
fun main() = runBlocking<Unit> {
    events()
        .onEach { event -> println("Event: $event") }
        .collect() // <--- Collecting the flow waits
    println("Done")
}