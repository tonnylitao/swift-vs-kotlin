func getStringLength(obj: Any) -> Int? {
    guard let obj = obj as? String else { return nil }
​
    return obj.count
}

//or

func getStringLength(obj: Any) -> Int? {
    (obj as? String)?.count
}
