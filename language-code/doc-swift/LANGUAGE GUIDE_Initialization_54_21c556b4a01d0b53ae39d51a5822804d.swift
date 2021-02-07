enum TemperatureUnit {

    case kelvin, celsius, fahrenheit

    init?(symbol: Character) {

        switch symbol {

        case "K":

            self = .kelvin

        case "C":

            self = .celsius

        case "F":

            self = .fahrenheit

        default:

            return nil

        }

    }

}