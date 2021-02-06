@Volatile // in Kotlin `volatile` is an annotation 
var counter = 0
​
fun main() = runBlocking {
    withContext(Dispatchers.Default) {
        massiveRun {
            counter++
        }
    }
    println("Counter = $counter")
}