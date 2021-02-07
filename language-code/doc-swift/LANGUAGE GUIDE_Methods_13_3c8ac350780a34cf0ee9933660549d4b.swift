enum TriStateSwitch {

    case off, low, high

    mutating func next() {

        switch self {

        case .off:

            self = .low

        case .low:

            self = .high

        case .high:

            self = .off

        }

    }

}

var ovenLight = TriStateSwitch.low

ovenLight.next()

// ovenLight is now equal to .high

ovenLight.next()

// ovenLight is now equal to .off