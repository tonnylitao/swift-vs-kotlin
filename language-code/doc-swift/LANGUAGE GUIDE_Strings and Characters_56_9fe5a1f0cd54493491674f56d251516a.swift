var mansionCount = 0

var cellCount = 0

for scene in romeoAndJuliet {

    if scene.hasSuffix("Capulet's mansion") {

        mansionCount += 1

    } else if scene.hasSuffix("Friar Lawrence's cell") {

        cellCount += 1

    }

}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// Prints "6 mansion scenes; 2 cell scenes"