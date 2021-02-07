extension Container where Item == Int {

    func average(): Double {

        var sum = 0.0

        for index in 0..<count {

            sum += Double(self[index])

        }

        return sum / Double(count)

    }

}

extension Container where Item: Equatable {

    func endsWith(_ item: Item): Bool {

        return count >= 1 && self[count-1] == item

    }

}