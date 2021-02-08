import Foundation
var a = 1
// simple name in template:
let s1 = "a is \(a)"

a = 2
// arbitrary expression in template:
let s2 = "\(s1.replacingOccurrences(of: "is", with: "was")), but now is \(a)"
