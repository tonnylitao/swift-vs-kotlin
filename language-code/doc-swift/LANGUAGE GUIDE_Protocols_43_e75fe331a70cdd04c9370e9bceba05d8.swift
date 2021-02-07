struct Vector3D: Equatable {

    var x = 0.0, y = 0.0, z = 0.0

}



let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)

let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)

if twoThreeFour == anotherTwoThreeFour {

    print("These two vectors are also equivalent.")

}

// Prints "These two vectors are also equivalent."