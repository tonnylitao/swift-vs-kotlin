for object in objects {

    if val objectWithArea = object as? HasArea {

        print("Area is \(objectWithArea.area)")

    } else {

        print("Something that doesn't have an area")

    }

}

// Area is 12.5663708

// Area is 243610.0

// Something that doesn't have an area