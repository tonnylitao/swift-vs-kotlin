let pink: UInt32 = 0xCC6699

let redComponent = (pink & 0xFF0000) >> 16    // redComponent is 0xCC, or 204

let greenComponent = (pink & 0x00FF00) >> 8   // greenComponent is 0x66, or 102

let blueComponent = pink & 0x0000FF           // blueComponent is 0x99, or 153