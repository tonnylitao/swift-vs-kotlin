enum Color : Int {
    case red = 0xFF0000
    case gree = 0x00FF00
    case blue = 0x0000FF
}
 
enum Color : String {
    case red = "0xFF0000"
    case gree = "0x00FF00"
    case blue = "0x0000FF"
}
 
let color = Color.red
let rgb = color.rawValue
