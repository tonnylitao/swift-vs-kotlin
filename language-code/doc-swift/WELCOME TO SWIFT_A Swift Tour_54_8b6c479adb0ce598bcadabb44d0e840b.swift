val printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")

val printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")