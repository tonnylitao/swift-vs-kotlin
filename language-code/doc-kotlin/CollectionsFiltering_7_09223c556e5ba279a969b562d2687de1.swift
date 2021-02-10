var numbers = ["one", "two", "three", "four"]
let p = numbers.partition { $0.count > 3 }

print(numbers[..<p])
print(numbers[p...])
