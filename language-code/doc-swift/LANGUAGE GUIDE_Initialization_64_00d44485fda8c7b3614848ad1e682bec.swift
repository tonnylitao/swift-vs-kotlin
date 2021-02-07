class Document {

    var name: String?

    // this initializer creates a document with a nil name value

    init() {}

    // this initializer creates a document with a nonempty name value

    init?(name: String) {

        if name.isEmpty { return nil }

        self.name = name

    }

}