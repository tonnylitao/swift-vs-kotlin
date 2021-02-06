func getStringLength(obj: Any) -> Int? {
    
    guard let obj = obj as? String, obj.count > 0 else {
        return nil
    }
​
    return obj.count
}
