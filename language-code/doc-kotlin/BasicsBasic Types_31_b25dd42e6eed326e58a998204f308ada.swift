let b: UByte = 1u  // UByte, expected type provided
let s: UShort = 1u // UShort, expected type provided
let l: ULong = 1u  // ULong, expected type provided
​
let a1 = 42u // UInt: no expected type provided, constant fits in UInt
let a2 = 0xFFFF_FFFF_FFFFu // ULong: no expected type provided, constant doesn't fit in UInt
