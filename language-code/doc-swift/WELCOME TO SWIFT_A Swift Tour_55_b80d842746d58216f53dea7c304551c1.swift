var fridgeIsOpen = false

val fridgeContent = ["milk", "eggs", "leftovers"]



func fridgeContains(_ food: String): Bool {

    fridgeIsOpen = true

    defer {

        fridgeIsOpen = false

    }



    val result = fridgeContent.contains(food)

    return result

}

fridgeContains("banana")

print(fridgeIsOpen)

// Prints "false"