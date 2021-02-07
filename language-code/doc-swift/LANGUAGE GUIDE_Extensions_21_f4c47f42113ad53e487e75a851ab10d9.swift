extension Int {

    enum Kind {

        case negative, zero, positive

    }

    var kind: Kind {

        switch self {

        case 0:

            return .zero

        case val x where x > 0:

            return .positive

        default:

            return .negative

        }

    }

}