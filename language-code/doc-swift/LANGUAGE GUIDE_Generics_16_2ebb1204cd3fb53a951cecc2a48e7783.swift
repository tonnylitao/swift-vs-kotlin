extension Stack {

    var topItem: Element? {

        return items.isEmpty ? nil : items[items.count - 1]

    }

}