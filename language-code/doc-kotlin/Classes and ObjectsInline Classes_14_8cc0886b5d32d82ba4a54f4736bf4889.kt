@JvmInline
value class UInt(val x: Int)
​
fun compute(x: Int) { }
​
@JvmName("computeUInt")
fun compute(x: UInt) { }