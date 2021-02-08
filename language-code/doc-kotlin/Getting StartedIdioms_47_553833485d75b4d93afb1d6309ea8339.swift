indirect enum Error: Swift.Error {
    case arithmeticException
    case llegalStateException(Error)
}

func count() throws -> Int { ... }

func test() throws {
    let result: Int

    do {
        result = try count()
    } catch Error.arithmeticException {
        throw Error.llegalStateException(.arithmeticException)
    }

    // Working with result
}

//-👏
