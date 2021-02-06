val chan = Channel<Deferred<String>>() // the channel for test
launch { // launch printing coroutine
    for (s in switchMapDeferreds(chan)) 
    println(s) // print each received string
}
chan.send(asyncString("BEGIN", 100))
delay(200) // enough time for "BEGIN" to be produced
chan.send(asyncString("Slow", 500))
delay(100) // not enough time to produce slow
chan.send(asyncString("Replace", 100))
delay(500) // give it time before the last one
chan.send(asyncString("END", 500))
delay(1000) // give it time to process
chan.close() // close the channel ... 
delay(500) // and wait some time to let it finish