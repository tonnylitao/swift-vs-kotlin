func main() {
    func printDouble(d: Double) { print(d) }
​
    let i = 1    
    let d = 1.1
    let f = 1.1f 
​
    printDouble(d)
//    printDouble(i) // Error: Type mismatch
//    printDouble(f) // Error: Type mismatch
}