func getStringLength(obj: Any) -> Int? {

    if let obj = obj as? String {
        return obj.count
    }

    return nil
}
