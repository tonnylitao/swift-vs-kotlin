withContext(context) {
    simple().collect { value ->
        println(value) // run in the specified context 
    }
}