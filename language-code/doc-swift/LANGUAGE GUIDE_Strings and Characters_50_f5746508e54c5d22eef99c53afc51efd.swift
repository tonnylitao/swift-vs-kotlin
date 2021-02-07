// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE

val eAcuteQuestion = "Voulez-vous un caf\u{E9}?"



// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT

val combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"



if eAcuteQuestion == combinedEAcuteQuestion {

    print("These two strings are considered equal")

}

// Prints "These two strings are considered equal"