let data = try JSONEncoder().encode(DataStruct(a: 42, b: "str"))
print(String(data: data, encoding: .utf8)!)
