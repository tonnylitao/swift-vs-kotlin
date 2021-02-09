class Surface {
    subscript(x: Int, y: Int) -> Int {
        2 * x + 4 * y - 10
    }
}
func getZValue(mySurface: Surface, xValue: Int, yValue: Int) -> Int {
    mySurface[
        xValue,
        yValue
    ]
}
