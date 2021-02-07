switch productBarcode {

case val .upc(numberSystem, manufacturer, product, check):

    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")

case val .qrCode(productCode):

    print("QR code: \(productCode).")

}

// Prints "QR code: ABCDEFGHIJKLMNOP."