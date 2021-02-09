private func parsePropertyValue(propName: String, token: Token) {
    switch token {
    case .valueToken:
        callback.visitValue(propName, token.value)
    case .lbrance: // ...
    }
}
