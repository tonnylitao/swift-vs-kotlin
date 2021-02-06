// Creates an Array<String> with values ["0", "1", "4", "9", "16"]
let asc = (0..<5).map { String($0 * $0) }
asc.forEach { print($0) }
