@JvmInline
value class UInt(val x: Int)
​
// Represented as 'public final void compute(int x)' on the JVM
fun compute(x: Int) { }
​
// Also represented as 'public final void compute(int x)' on the JVM!
fun compute(x: UInt) { }