func findIndex<T>(of valueToFind: T, in array:[T]) -> Int? {

    for (index, value) in array.enumerated() {

        if value == valueToFind {

            return index

        }

    }

    return nil

}