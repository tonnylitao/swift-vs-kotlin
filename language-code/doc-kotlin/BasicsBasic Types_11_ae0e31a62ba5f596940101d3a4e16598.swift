let a: Int? = 1 // Optional
let b: Double? = Double(a!)
print(b == a) //Compiler Error: Binary operator '==' cannot be applied to operands of type 'Double?' and 'Int?'
