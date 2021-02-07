func findIndex(ofString valueToFind: String, in array: [String]): Int? {

    for (index, value) in array.enumerated() {

        if value == valueToFind {

            return index

        }

    }

    return nil

}