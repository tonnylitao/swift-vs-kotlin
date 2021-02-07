val puzzleInput = "great minds think alike"

var puzzleOutput = ""

val charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

for character in puzzleInput {

    if charactersToRemove.contains(character) {

        continue

    }

    puzzleOutput.append(character)

}

print(puzzleOutput)

// Prints "grtmndsthnklk"