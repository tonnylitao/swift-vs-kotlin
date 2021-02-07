extension Container where Item == Double {

    func average() -> Double {

        var sum = 0.0

        for index in 0..<count {

            sum += self[index]

        }

        return sum / Double(count)

    }

}

print([1260.0, 1200.0, 98.6, 37.0].average())

// Prints "648.9"