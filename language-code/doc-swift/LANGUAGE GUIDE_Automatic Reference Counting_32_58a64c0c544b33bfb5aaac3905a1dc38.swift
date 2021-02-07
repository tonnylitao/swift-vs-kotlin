let heading = HTMLElement(name: "h1")

let defaultText = "some default text"

heading.asHTML = {

    return "<\(heading.name)>\(heading.text ?? defaultText)</\(heading.name)>"

}

print(heading.asHTML())

// Prints "<h1>some default text</h1>"