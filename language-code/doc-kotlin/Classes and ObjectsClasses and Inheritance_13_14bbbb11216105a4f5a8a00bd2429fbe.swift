class Person {
    var children: [Person] = []
    
    init(parent: Person) {
        parent.children.append(self)
    }
}
