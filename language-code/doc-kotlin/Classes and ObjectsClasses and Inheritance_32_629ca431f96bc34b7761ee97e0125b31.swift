class Base {
    let name: String
    init(name: String) {
        self.name = name
        print("Initializing Base")
    }
    
    var size: Int {
        get { return name.count }
    }
}

class Derived: Base {
    let lastName: String
    
    init(name: String, lastName: String) {
        self.lastName = lastName
        print("Initializing Derived")
        
        super.init(name: name.uppercased())
    }
    
    override var size: Int {
        get { return super.size + lastName.count }
    }
}
