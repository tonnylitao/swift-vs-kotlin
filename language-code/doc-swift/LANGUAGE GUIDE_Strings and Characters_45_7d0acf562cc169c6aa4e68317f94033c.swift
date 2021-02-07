welcome.remove(at: welcome.index(before: welcome.endIndex))

// welcome now equals "hello there"



val range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex

welcome.removeSubrange(range)

// welcome now equals "hello"