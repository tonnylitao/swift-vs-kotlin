welcome.remove(at: welcome.index(before: welcome.endIndex))

// welcome now equals "hello there"



let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex

welcome.removeSubrange(range)

// welcome now equals "hello"