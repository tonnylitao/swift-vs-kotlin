let approximateCount = 62

let countedThings = "moons orbiting Saturn"

let naturalCount: String

switch approximateCount {

case 0:

    naturalCount = "no"

case 1..<5:

    naturalCount = "a few"

case 5..<12:

    naturalCount = "several"

case 12..<100:

    naturalCount = "dozens of"

case 100..<1000:

    naturalCount = "hundreds of"

default:

    naturalCount = "many"

}

print("There are \(naturalCount) \(countedThings).")

// Prints "There are dozens of moons orbiting Saturn."