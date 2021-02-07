protocol Container {

    associatedtype Item

    mutating func append(_ item: Item)

    var count: Int { get }

    subscript(i: Int) -> Item { get }

}