func send(job: Int, toPrinter printerName: String) throws -> String {

    if printerName == "Never Has Toner" {

        throw PrinterError.noToner

    }

    return "Job sent"

}