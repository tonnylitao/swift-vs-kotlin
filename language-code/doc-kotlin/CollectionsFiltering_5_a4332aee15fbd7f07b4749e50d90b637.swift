let numbers = [nil, "one", "two", nil]
numbers.compactMap({ $0 }).forEach {
    print($0.count)
}
