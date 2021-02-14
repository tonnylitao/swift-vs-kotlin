extension Optional {
    func toString() -> String {
        guard let x = self else  {
            return "nil"
        }
        
        return "\(x)"
    }
}
