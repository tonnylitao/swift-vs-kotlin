let numbers = ["one", "two", "three", "four"]


print(numbers.contains { $0.hasSuffix("e") })
print(!numbers.contains { $0.hasSuffix("a") })
print(numbers.allSatisfy { $0.hasSuffix("e") })

print([Int]().allSatisfy { $0 > 5 })   // vacuous truth https://en.wikipedia.org/wiki/Vacuous_truth
