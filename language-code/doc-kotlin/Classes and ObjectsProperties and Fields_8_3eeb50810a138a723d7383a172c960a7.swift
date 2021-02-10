var isEmpty: Bool { //'let' declarations cannot be computed properties
    get { self.count == 0 }
}
