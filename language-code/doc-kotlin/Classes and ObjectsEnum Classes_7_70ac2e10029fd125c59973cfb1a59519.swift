protocol IntBinaryOperator {
    func apply(_ t: Int, _ u: Int) -> Int
}
 
enum IntArithmetics: IntBinaryOperator {
    case plus, times
 
    func apply(_ t: Int, _ u: Int) -> Int {
        switch self {
        case .plus:
            return t + u
        case .times:
            return t * u
        }
    }
}
 
IntArithmetics.plus.apply(13, 31)
IntArithmetics.times.apply(13, 31)
