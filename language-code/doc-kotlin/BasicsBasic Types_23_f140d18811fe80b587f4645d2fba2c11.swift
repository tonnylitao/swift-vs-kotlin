enum Error: Swift.Error {
    case illegalArgumentException
}

func decimalDigitValue(c: Character) throws -> Int? {
    guard c >= "0" && c <= "9" else {
        throw Error.illegalArgumentException
    }
    
    return Int(String(c))
}
