for i in 1...100 { ... }  // closed range: includes 100
for i in 1..<100 { ... } // half-open range: does not include 100
for x in stride(from: 2, through: 10, by: 2) { ... }
for x in stride(from: 10, through: 0, by: -1) { ... }
if 1...10 ~= x { ... }
