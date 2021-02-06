if (something is List<*>) {
    something.forEach { println(it) } // The items are typed as `Any?`
}