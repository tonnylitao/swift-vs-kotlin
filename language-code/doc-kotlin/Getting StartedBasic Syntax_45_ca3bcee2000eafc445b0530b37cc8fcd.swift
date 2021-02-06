let fruits = ["banana", "avocado", "apple", "kiwifruit"]
fruits
    .filter { $0.starts(with: "a") }
    .sorted()
    .map { $0.uppercased() }
    .forEach { print($0) }
