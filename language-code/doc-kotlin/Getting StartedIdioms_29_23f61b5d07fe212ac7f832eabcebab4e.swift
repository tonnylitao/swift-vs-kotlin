struct Resource {
    static let shared = Resource()
    let name: String = "Name"

    private init() { }
}
let resource = Resource.shared

//-👏
