func someThrowingFunction() throws -> Int {

    // ...

}



val x = try? someThrowingFunction()



val y: Int?

do {

    y = try someThrowingFunction()

} catch {

    y = nil

}