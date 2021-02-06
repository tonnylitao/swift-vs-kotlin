enum Error: Swift.Error {
    case illegalArgumentException(String)
}
func transform(color: String) throws -> Int {
    switch (color) {
    case "Red": return 0
    case "Green": return 1
    case "Blue": return 2
    default: throw Error.illegalArgumentException("Invalid color param value")
    }
}
