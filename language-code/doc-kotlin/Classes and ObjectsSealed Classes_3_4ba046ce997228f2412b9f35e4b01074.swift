protocol Expr {}

indirect enum MathExpr: Expr {
    case const(Double)
    case sum(Expr, Expr)
    case notANumber
}
