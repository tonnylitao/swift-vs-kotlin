simple()
    .onCompletion { println("Done") }
    .collect { value -> println(value) }