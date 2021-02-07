val doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25])

// doubleIndex is an optional Int with no value, because 9.3 isn't in the array

val stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])

// stringIndex is an optional Int containing a value of 2