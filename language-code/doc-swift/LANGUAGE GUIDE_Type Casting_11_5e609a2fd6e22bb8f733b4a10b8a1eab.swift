for thing in things {

    switch thing {

    case 0 as Int:

        print("zero as an Int")

    case 0 as Double:

        print("zero as a Double")

    case let someInt as Int:

        print("an integer value of \(someInt)")

    case let someDouble as Double where someDouble > 0:

        print("a positive double value of \(someDouble)")

    case is Double:

        print("some other double value that I don't want to print")

    case let someString as String:

        print("a string value of \"\(someString)\"")

    case let (x, y) as (Double, Double):

        print("an (x, y) point at \(x), \(y)")

    case let movie as Movie:

        print("a movie called \(movie.name), dir. \(movie.director)")

    case let stringConverter as (String) -> String:

        print(stringConverter("Michael"))

    default:

        print("something else")

    }

}



// zero as an Int

// zero as a Double

// an integer value of 42

// a positive double value of 3.14159

// a string value of "hello"

// an (x, y) point at 3.0, 5.0

// a movie called Ghostbusters, dir. Ivan Reitman

// Hello, Michael