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
 
val color = Color.red
val rgb = color.rawValue
