func getStringLength(obj: Any) -> Int? {

    if let obj = obj as? String, obj.count > 0 {
        return obj.count
    }
​
    return nil
}
