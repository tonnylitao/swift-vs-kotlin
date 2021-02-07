class Car: Vehicle {

    var gear = 1

    override var description: String {

        return super.description + " in gear \(gear)"

    }

}