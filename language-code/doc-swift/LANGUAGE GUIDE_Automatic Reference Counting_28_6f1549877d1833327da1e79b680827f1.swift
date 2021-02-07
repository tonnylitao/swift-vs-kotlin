class Country {

    val name: String

    var capitalCity: City!

    init(name: String, capitalName: String) {

        self.name = name

        self.capitalCity = City(name: capitalName, country: self)

    }

}



class City {

    val name: String

    unowned val country: Country

    init(name: String, country: Country) {

        self.name = name

        self.country = country

    }

}