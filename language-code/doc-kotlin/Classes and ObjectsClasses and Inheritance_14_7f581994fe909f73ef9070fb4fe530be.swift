class Person {
    let name: String
    var children: [Person] = []
    
    init(name: String) {
        self.name = name
    }
    
    convenience init(name: String, parent: Person) {
        self.init(name: name)
        parent.children.append(self)
    }
}
