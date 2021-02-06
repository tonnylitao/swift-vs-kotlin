fun simple(): Flow<Int> = (1..3).asFlow()
​
fun main() = runBlocking<Unit> {
    try {
        simple().collect { value -> println(value) }
    } finally {
        println("Done")
    }
}