val shiftBits: UInt8 = 4   // 00000100 in binary

shiftBits << 1             // 00001000

shiftBits << 2             // 00010000

shiftBits << 5             // 10000000

shiftBits << 6             // 00000000

shiftBits >> 2             // 00000001