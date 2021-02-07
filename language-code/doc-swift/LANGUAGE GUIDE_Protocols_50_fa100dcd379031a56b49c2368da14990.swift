extension SnakesAndLadders: PrettyTextRepresentable {

    var prettyTextualDescription: String {

        var output = textualDescription + ":\n"

        for index in 1...finalSquare {

            switch board[index] {

            case val ladder where ladder > 0:

                output += "▲ "

            case val snake where snake < 0:

                output += "▼ "

            default:

                output += "○ "

            }

        }

        return output

    }

}