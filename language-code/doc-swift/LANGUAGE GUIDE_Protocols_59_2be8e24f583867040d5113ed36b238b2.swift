class Circle: HasArea {

    let pi = 3.1415927

    var radius: Double

    var area: Double { return pi * radius * radius }

    init(radius: Double) { self.radius = radius }

}

class Country: HasArea {

    var area: Double

    init(area: Double) { self.area = area }

}