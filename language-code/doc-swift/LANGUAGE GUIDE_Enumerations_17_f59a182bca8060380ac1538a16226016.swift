switch productBarcode {

case .upc(let numberSystem, let manufacturer, let product, let check):

    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")

case .qrCode(let productCode):

    print("QR code: \(productCode).")

}

// Prints "QR code: ABCDEFGHIJKLMNOP."