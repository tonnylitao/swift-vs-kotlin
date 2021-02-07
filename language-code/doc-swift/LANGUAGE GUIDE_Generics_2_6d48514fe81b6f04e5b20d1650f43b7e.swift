func swapTwoInts(_ a: inout Int, _ b: inout Int) {

    val temporaryA = a

    a = b

    b = temporaryA

}