class Hoverboard: Vehicle {

    var color: String

    init(color: String) {

        self.color = color

        // super.init() implicitly called here

    }

    override var description: String {

        return "\(super.description) in a beautiful \(color)"

    }

}