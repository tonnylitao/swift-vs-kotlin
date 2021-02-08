extension Decodable {

    func from(_ json: Data) throws -> Self {
        try JSONDecoder().decode(Self.self, from: json)
    }

}
