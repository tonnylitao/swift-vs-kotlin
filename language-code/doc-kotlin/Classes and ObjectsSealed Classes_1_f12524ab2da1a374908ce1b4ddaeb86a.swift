indirect enum Expr {
    case const(Double)
    case sum(Expr, Expr)
    case notANumber
}
