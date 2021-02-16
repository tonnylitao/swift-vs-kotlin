class User {
    let name: String
    let age: Int
    
    init(_ map: [String: Any]) {
        self.name = map["name"] as! String
        self.age = map["age"] as! Int
    }
}
