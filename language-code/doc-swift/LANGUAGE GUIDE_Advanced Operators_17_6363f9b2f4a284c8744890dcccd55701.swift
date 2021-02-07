var signedOverflow = Int8.min

// signedOverflow equals -128, which is the minimum value an Int8 can hold

signedOverflow = signedOverflow &- 1

// signedOverflow is now equal to 127