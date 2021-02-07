// Reimplement the Swift standard library's optional type

enum OptionalValue<Wrapped> {

    case none

    case some(Wrapped)

}

var possibleInteger: OptionalValue<Int> = .none

possibleInteger = .some(100)