enum SkillLevel: Comparable {

    case beginner

    case intermediate

    case expert(stars: Int)

}

var levels = [SkillLevel.intermediate, SkillLevel.beginner,

              SkillLevel.expert(stars: 5), SkillLevel.expert(stars: 3)]

for level in levels.sorted() {

    print(level)

}

// Prints "beginner"

// Prints "intermediate"

// Prints "expert(stars: 3)"

// Prints "expert(stars: 5)"