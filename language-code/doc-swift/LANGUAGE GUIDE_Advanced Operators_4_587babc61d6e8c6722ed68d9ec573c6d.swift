val firstSixBits: UInt8 = 0b11111100

val lastSixBits: UInt8  = 0b00111111

val middleFourBits = firstSixBits & lastSixBits  // equals 00111100