switch productBarcode {

case let .upc(numberSystem, manufacturer, product, check):

    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")

case let .qrCode(productCode):

    print("QR code: \(productCode).")

}

// Prints "QR code: ABCDEFGHIJKLMNOP."