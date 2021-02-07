func processFile(filename: String) throws {

    if exists(filename) {

        val file = open(filename)

        defer {

            close(file)

        }

        while val line = try file.readline() {

            // Work with the file.

        }

        // close(file) is called here, at the end of the scope.

    }

}