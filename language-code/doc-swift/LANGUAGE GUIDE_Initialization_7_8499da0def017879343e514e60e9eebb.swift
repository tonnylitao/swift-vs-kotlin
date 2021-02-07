struct Celsius {

    var temperatureInCelsius: Double

    init(fromFahrenheit fahrenheit: Double) {

        temperatureInCelsius = (fahrenheit - 32.0) / 1.8

    }

    init(fromKelvin kelvin: Double) {

        temperatureInCelsius = kelvin - 273.15

    }

}

val boilingPointOfWater = Celsius(fromFahrenheit: 212.0)

// boilingPointOfWater.temperatureInCelsius is 100.0

val freezingPointOfWater = Celsius(fromKelvin: 273.15)

// freezingPointOfWater.temperatureInCelsius is 0.0