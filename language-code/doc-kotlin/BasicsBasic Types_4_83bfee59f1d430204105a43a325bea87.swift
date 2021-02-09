func main() {
    func printDouble(_ d: Double) { print(d) }
    
    let i = 1
    let d = 1.1
    let f: Float = 1.1
    
    printDouble(d)
//    printDouble(i) // Error: Cannot convert value of type 'Int' to expected argument type 'Double'
//    printDouble(f) // Error: Cannot convert value of type 'Float' to expected argument type 'Double'
}
