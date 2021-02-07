class AutomaticCar: Car {

    override var currentSpeed: Double {

        didSet {

            gear = Int(currentSpeed / 10.0) + 1

        }

    }

}