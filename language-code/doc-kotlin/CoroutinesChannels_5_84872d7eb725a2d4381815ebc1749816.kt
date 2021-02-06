val squares = produceSquares()
squares.consumeEach { println(it) }
println("Done!")