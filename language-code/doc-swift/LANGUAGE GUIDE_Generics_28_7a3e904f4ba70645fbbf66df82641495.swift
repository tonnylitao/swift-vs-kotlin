struct Stack<Element>: Container {

    // original Stack<Element> implementation

    var items = [Element]()

    mutating func push(_ item: Element) {

        items.append(item)

    }

    mutating func pop() -> Element {

        return items.removeLast()

    }

    // conformance to the Container protocol

    mutating func append(_ item: Element) {

        self.push(item)

    }

    var count: Int {

        return items.count

    }

    subscript(i: Int) -> Element {

        return items[i]

    }

}