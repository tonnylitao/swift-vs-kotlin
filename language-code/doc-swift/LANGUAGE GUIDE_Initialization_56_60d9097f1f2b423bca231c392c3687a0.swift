enum TemperatureUnit: Character {

    case kelvin = "K", celsius = "C", fahrenheit = "F"

}



let fahrenheitUnit = TemperatureUnit(rawValue: "F")

if fahrenheitUnit != nil {

    print("This is a defined temperature unit, so initialization succeeded.")

}

// Prints "This is a defined temperature unit, so initialization succeeded."



let unknownUnit = TemperatureUnit(rawValue: "X")

if unknownUnit == nil {

    print("This is not a defined temperature unit, so initialization failed.")

}

// Prints "This is not a defined temperature unit, so initialization failed."