func eval(expr: Expr) -> Double? {
    switch expr {
    case .const(let number):
        return number
    case .sum(let e1, let e2):
        return eval(e1) + eval(e2)
    default:
        return nil
    }
}
