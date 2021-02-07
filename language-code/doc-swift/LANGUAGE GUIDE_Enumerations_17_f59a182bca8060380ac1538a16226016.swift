switch productBarcode {

case .upc(val numberSystem, val manufacturer, val product, val check):

    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")

case .qrCode(val productCode):

    print("QR code: \(productCode).")

}

// Prints "QR code: ABCDEFGHIJKLMNOP."