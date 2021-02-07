let anotherCharacter: Character = "a"

switch anotherCharacter {

case "a": // Invalid, the case has an empty body

case "A":

    print("The letter A")

default:

    print("Not the letter A")

}

// This will report a compile-time error.