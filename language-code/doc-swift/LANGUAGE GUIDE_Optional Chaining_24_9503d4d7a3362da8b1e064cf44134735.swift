val johnsHouse = Residence()

johnsHouse.rooms.append(Room(name: "Living Room"))

johnsHouse.rooms.append(Room(name: "Kitchen"))

john.residence = johnsHouse



if val firstRoomName = john.residence?[0].name {

    print("The first room name is \(firstRoomName).")

} else {

    print("Unable to retrieve the first room name.")

}

// Prints "The first room name is Living Room."