let dataList = [(DataStruct(a: 42, b: "abc"), DataStruct(a: 12, b: "test")]

let data = try! JSONEncoder().encode(dataList)
let jsonList = String(data: data, encoding: .utf8)!
