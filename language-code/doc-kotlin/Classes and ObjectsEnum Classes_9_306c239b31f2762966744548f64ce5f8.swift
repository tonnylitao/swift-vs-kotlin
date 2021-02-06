enum Direction : String, CaseIterable {
  case north, south, west, east
}
 
Direction(rawValue: "north") //Direction.north
Direction.allCases
 
Direction.north.rawValue
