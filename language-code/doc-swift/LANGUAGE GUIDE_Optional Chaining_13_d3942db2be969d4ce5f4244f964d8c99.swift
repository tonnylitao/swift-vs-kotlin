class Address {

    var buildingName: String?

    var buildingNumber: String?

    var street: String?

    func buildingIdentifier() -> String? {

        if let buildingNumber = buildingNumber, let street = street {

            return "\(buildingNumber) \(street)"

        } else if buildingName != nil {

            return buildingName

        } else {

            return nil

        }

    }

}