var welcome = "hello"

welcome.insert("!", at: welcome.endIndex)

// welcome now equals "hello!"



welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

// welcome now equals "hello there!"