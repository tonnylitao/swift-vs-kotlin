// Bad: use of mutable collection type for value which will not be mutated
fun validateValue(actualValue: String, allowedValues: HashSet<String>) { ... }
​
// Good: immutable collection type used instead
fun validateValue(actualValue: String, allowedValues: Set<String>) { ... }
​
// Bad: arrayListOf() returns ArrayList<T>, which is a mutable collection type
val allowedValues = arrayListOf("a", "b", "c")
​
// Good: listOf() returns List<T>
val allowedValues = listOf("a", "b", "c")