var things = [Any]()



things.append(0)

things.append(0.0)

things.append(42)

things.append(3.14159)

things.append("hello")

things.append((3.0, 5.0))

things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))

things.append({ (name: String): String in "Hello, \(name)" })