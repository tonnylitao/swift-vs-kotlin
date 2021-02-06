// Avoid doing this:
​
/**
 * Returns the absolute value of the given number.
 * @param number The number to return the absolute value for.
 * @return The absolute value.
 */
fun abs(number: Int) { /*...*/ }
​
// Do this instead:
​
/**
 * Returns the absolute value of the given [number].
 */
fun abs(number: Int) { /*...*/ }