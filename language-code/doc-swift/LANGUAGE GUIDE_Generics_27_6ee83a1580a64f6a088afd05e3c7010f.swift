struct IntStack: Container {

    // original IntStack implementation

    var items = [Int]()

    mutating func push(_ item: Int) {

        items.append(item)

    }

    mutating func pop(): Int {

        return items.removeLast()

    }

    // conformance to the Container protocol

    typealias Item = Int

    mutating func append(_ item: Int) {

        self.push(item)

    }

    var count: Int {

        return items.count

    }

    subscript(i: Int): Int {

        return items[i]

    }

}