var unsignedOverflow = UInt8.max

// unsignedOverflow equals 255, which is the maximum value a UInt8 can hold

unsignedOverflow = unsignedOverflow &+ 1

// unsignedOverflow is now equal to 0