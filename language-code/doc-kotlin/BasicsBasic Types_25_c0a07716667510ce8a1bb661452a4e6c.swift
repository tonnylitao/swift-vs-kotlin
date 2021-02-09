struct Array<Element> {
    private init() {}
    
    let size: Int
    func get(index: Int) -> Element { /*...*/ }
    func set(index: Int, value: Element) { /*...*/ }
    
    func iterator() -> Iterator<Element> { /*...*/ }
    // ...
}
