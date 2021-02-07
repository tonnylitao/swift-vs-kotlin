class Residence {

    var rooms = [Room]()

    var numberOfRooms: Int {

        return rooms.count

    }

    subscript(i: Int) -> Room {

        get {

            return rooms[i]

        }

        set {

            rooms[i] = newValue

        }

    }

    func printNumberOfRooms() {

        print("The number of rooms is \(numberOfRooms)")

    }

    var address: Address?

}