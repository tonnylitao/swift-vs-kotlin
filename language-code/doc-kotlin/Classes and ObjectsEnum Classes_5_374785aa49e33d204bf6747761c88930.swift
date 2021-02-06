enum ProtocolState {
    case waiting, talking
    
    func signal() -> ProtocolState {
        switch self {
        case .waiting:
            return .talking
        case .talking:
            return .waiting
        }
    }
}
 
let state = ProtocolState.waiting.signal()
