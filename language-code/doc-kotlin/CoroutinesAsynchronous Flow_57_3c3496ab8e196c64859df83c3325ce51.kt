simple()
    .catch { e -> emit("Caught $e") } // emit on exception
    .collect { value -> println(value) }