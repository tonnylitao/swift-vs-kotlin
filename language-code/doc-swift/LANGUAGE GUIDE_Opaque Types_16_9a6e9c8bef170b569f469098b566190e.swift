protocol Container {

    associatedtype Item

    var count: Int { get }

    subscript(i: Int) -> Item { get }

}

extension Array: Container { }