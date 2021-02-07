do {

    val printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")

    print(printerResponse)

} catch {

    print(error)

}

// Prints "Job sent"