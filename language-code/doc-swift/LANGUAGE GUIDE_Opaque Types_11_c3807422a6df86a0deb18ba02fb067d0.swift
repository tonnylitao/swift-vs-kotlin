func `repeat`<T: Shape>(shape: T, count: Int) -> some Collection {

    return Array<T>(repeating: shape, count: count)

}