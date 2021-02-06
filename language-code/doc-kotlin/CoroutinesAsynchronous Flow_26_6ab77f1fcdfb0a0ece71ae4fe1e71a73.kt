fun simple(): Flow<Int> = flow {
    log("Started simple flow")
    for (i in 1..3) {
        emit(i)
    }
}  
​
fun main() = runBlocking<Unit> {
    simple().collect { value -> log("Collected $value") } 
}