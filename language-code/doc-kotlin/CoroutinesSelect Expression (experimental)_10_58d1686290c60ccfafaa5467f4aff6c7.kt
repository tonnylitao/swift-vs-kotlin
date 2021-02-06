val side = Channel<Int>() // allocate side channel
launch { // this is a very fast consumer for the side channel
    side.consumeEach { println("Side channel has $it") }
}
produceNumbers(side).consumeEach { 
    println("Consuming $it")
    delay(250) // let us digest the consumed number properly, do not hurry
}
println("Done consuming")
coroutineContext.cancelChildren()