class AutomaticallyNamedDocument: Document {

    override init() {

        super.init()

        self.name = "[Untitled]"

    }

    override init(name: String) {

        super.init()

        if name.isEmpty {

            self.name = "[Untitled]"

        } else {

            self.name = name

        }

    }

}