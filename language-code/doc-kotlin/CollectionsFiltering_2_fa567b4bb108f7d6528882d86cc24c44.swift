let numbers = ["one", "two", "three", "four"]
let longerThan3 = numbers.filter { $0.count > 3 }
print(longerThan3)

let numbersMap = ["key1": 1, "key2": 2, "key3": 3, "key11": 11]
let filteredMap = numbersMap.filter { $0.hasSuffix("1") && $1 > 10 }
print(filteredMap)
