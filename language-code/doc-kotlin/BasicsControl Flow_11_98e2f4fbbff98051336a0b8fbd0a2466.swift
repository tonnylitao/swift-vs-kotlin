extension Request {
    
    func getBody() throws -> Body {
        let response = executeRequest()
        
        switch response {
        case .success(let body):
            return body
        case .error(let status):
            throw .httpException(status)
        }
    }
}
        
