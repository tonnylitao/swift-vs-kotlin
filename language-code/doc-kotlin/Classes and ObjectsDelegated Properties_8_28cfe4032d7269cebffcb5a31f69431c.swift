class User {
    var name: String = "" {
        didSet {
            print("\(oldValue) -> \(name)")
        }
    }
}

let user = User()
user.name = "first"
user.name = "second"

// -> first
//first -> second
