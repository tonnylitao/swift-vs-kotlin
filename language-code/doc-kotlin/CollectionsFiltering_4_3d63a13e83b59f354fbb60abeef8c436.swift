let numbers = [nil, 1, "two", 3.0, "four"] as [Any?]
print("All String elements in upper case:")

numbers.compactMap({ $0 as? String })
    .forEach { print($0.uppercased()) }
