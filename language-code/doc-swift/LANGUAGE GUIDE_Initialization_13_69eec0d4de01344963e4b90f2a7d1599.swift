struct Celsius {

    var temperatureInCelsius: Double

    init(fromFahrenheit fahrenheit: Double) {

        temperatureInCelsius = (fahrenheit - 32.0) / 1.8

    }

    init(fromKelvin kelvin: Double) {

        temperatureInCelsius = kelvin - 273.15

    }

    init(_ celsius: Double) {

        temperatureInCelsius = celsius

    }

}

val bodyTemperature = Celsius(37.0)

// bodyTemperature.temperatureInCelsius is 37.0