extension SnakesAndLadders: PrettyTextRepresentable {

    var prettyTextualDescription: String {

        var output = textualDescription + ":\n"

        for index in 1...finalSquare {

            switch board[index] {

            case let ladder where ladder > 0:

                output += "▲ "

            case let snake where snake < 0:

                output += "▼ "

            default:

                output += "○ "

            }

        }

        return output

    }

}