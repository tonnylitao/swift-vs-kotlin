class A(val p: Int)
val prop = A::p
println(prop.get(A(1)))