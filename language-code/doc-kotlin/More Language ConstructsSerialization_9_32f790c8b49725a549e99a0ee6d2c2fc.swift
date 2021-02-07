let data = Data("{\"a\":42, \"b\": \"str\"}".utf8)
let movie = try JSONDecoder().decode(DataStruct.self, from: data)
