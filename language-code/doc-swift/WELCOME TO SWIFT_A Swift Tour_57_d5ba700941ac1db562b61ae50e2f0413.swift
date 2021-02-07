func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {

    var result = [Item]()

    for _ in 0..<numberOfTimes {

        result.append(item)

    }

    return result

}

makeArray(repeating: "knock", numberOfTimes: 4)