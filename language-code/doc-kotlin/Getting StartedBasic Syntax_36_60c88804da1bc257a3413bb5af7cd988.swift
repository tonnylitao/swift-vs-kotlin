func describe(obj: Any) -> String {
    switch obj {
    case 1 as Int: //or case is Int where obj as? Int == 1
        return "One"
    case "Hello" as String: //or case is String where obj as? String == "Hello":
        return "Greeting"
    case is Double:
        return "Double"
    case _ where !(obj is String):
        return "Not a string"
    default:
        return "Unknown"
    }
}

//-👏
