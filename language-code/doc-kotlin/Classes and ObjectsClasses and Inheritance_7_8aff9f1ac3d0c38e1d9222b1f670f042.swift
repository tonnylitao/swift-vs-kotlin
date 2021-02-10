class InitOrderDemo {
    private let name: String
    
    init(name: String) {
        self.name = name
        
        print("First initializer block that prints \(name)")
    }
    
    var firstProperty: String {
        get {
            return "First property: \(self.name)"
        }
    }
    
    var secondProperty: String {
        get {
            return "Second property: \(self.name.count)"
        }
    }
}

//-👏
