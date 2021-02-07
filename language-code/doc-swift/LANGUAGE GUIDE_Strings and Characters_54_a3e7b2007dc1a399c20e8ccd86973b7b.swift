var act1SceneCount = 0

for scene in romeoAndJuliet {

    if scene.hasPrefix("Act 1 ") {

        act1SceneCount += 1

    }

}

print("There are \(act1SceneCount) scenes in Act 1")

// Prints "There are 5 scenes in Act 1"