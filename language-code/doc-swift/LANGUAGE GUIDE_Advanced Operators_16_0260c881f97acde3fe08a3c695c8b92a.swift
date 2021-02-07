var unsignedOverflow = UInt8.min

// unsignedOverflow equals 0, which is the minimum value a UInt8 can hold

unsignedOverflow = unsignedOverflow &- 1

// unsignedOverflow is now equal to 255