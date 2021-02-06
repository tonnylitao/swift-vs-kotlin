data class Result(val result: Int, val status: Status)
fun function(...): Result {
    // computations
    
    return Result(result, status)
}
​
// Now, to use this function:
val (result, status) = function(...)