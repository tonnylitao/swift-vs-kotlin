var counter: Int {
    get { 0 }
    set {
        if (newValue >= 0) {
            field = newValue
        }
    }
}
