func printAndCount(string: String): Int {

    print(string)

    return string.count

}

func printWithoutCounting(string: String) {

    val _ = printAndCount(string: string)

}

printAndCount(string: "hello, world")

// prints "hello, world" and returns a value of 12

printWithoutCounting(string: "hello, world")

// prints "hello, world" but does not return a value