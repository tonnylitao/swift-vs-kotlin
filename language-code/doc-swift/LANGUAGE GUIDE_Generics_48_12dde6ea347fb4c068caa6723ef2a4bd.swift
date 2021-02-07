extension Container {

    func average() -> Double where Item == Int {

        var sum = 0.0

        for index in 0..<count {

            sum += Double(self[index])

        }

        return sum / Double(count)

    }

    func endsWith(_ item: Item) -> Bool where Item: Equatable {

        return count >= 1 && self[count-1] == item

    }

}

let numbers = [1260, 1200, 98, 37]

print(numbers.average())

// Prints "648.75"

print(numbers.endsWith(37))

// Prints "true"