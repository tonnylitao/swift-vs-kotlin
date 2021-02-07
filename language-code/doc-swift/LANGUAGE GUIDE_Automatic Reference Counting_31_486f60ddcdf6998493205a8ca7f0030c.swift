class HTMLElement {



    val name: String

    val text: String?



    lazy var asHTML: (): String = {

        if val text = self.text {

            return "<\(self.name)>\(text)</\(self.name)>"

        } else {

            return "<\(self.name) />"

        }

    }



    init(name: String, text: String? = nil) {

        self.name = name

        self.text = text

    }



    deinit {

        print("\(name) is being deinitialized")

    }



}