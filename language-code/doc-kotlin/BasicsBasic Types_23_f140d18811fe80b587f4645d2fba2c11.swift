enum Error: Swift.Error {
    case illegalArgumentException
}

func decimalDigitValue(c: Character) throws -> Int? {
    guard let int = Int(String(c)), 0...9 ~= int else {
        throw Error.illegalArgumentException
    }
    
    return int
}
