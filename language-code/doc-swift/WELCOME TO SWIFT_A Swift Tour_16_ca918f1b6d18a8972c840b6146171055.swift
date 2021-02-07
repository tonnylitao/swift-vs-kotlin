val vegetable = "red pepper"

switch vegetable {

case "celery":

    print("Add some raisins and make ants on a log.")

case "cucumber", "watercress":

    print("That would make a good tea sandwich.")

case val x where x.hasSuffix("pepper"):

    print("Is it a spicy \(x)?")

default:

    print("Everything tastes good in soup.")

}

// Prints "Is it a spicy red pepper?"