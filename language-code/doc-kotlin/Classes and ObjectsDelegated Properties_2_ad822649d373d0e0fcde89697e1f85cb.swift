@propertyWrapper struct Delegate {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
            print("\(wrappedValue) has been assigned")
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
        print("thank you for delegating to me!")
    }
}
