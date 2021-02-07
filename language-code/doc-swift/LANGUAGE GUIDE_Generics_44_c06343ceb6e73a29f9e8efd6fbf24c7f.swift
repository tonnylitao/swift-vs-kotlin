extension Container where Item: Equatable {

    func startsWith(_ item: Item): Bool {

        return count >= 1 && self[0] == item

    }

}