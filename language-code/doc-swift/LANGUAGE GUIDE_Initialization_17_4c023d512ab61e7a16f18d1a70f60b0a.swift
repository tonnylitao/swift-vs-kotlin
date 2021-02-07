class SurveyQuestion {

    val text: String

    var response: String?

    init(text: String) {

        self.text = text

    }

    func ask() {

        print(text)

    }

}

val beetsQuestion = SurveyQuestion(text: "How about beets?")

beetsQuestion.ask()

// Prints "How about beets?"

beetsQuestion.response = "I also like beets. (But not with cheese.)"