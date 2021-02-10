func hasPrefix(x: Any) -> Bool {
    switch x {
    case let x as String:
        return x.starts(with: "prefix")
    default:
        return false
    }
}
