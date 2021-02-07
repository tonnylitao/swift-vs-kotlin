func swapTwoValues<T>(_ a: inout T, _ b: inout T) {

    val temporaryA = a

    a = b

    b = temporaryA

}