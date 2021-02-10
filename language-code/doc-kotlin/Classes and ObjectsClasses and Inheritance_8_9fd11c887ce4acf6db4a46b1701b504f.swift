class Customer {
    private let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var customerKey: String {
        get { return name.toUpperCase }
    }
}
