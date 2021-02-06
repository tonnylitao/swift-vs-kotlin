let value: Int? = 1
​
let mapped = value.flatMap { transformValue($0) } ?? defaultValue
// defaultValue is returned if the value or the transform result is null.
