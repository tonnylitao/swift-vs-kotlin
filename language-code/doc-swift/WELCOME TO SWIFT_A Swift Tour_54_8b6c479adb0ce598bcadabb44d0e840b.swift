let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")

let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")