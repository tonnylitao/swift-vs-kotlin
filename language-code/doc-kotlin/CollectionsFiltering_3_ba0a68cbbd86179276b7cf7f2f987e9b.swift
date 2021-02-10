let numbers = ["one", "two", "three", "four"]

let filteredIdx = numbers
    .enumerated()
    .filter { $0.offset != 0 && $0.element.count < 5 }
let filteredNot = numbers.filter { $0.count > 3 }

print(filteredIdx)
print(filteredNot)
