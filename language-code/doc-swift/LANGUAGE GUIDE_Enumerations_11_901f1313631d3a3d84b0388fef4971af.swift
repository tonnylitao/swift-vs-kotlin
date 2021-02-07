enum Beverage: CaseIterable {

    case coffee, tea, juice

}

let numberOfChoices = Beverage.allCases.count

print("\(numberOfChoices) beverages available")

// Prints "3 beverages available"