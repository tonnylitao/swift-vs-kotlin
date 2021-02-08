class Array<T> {
    private Array()
    
    let size: Int
    func get(index: Int): T
    func set(index: Int, value: T)
​
    func iterator(): Iterator<T>
    // ...
}
