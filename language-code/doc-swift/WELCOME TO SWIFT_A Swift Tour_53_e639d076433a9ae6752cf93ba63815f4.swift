do {

    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")

    print(printerResponse)

} catch PrinterError.onFire {

    print("I'll just put this over here, with the rest of the fire.")

} catch let printerError as PrinterError {

    print("Printer error: \(printerError).")

} catch {

    print(error)

}

// Prints "Job sent"