var movieCount = 0

var songCount = 0



for item in library {

    if item is Movie {

        movieCount += 1

    } else if item is Song {

        songCount += 1

    }

}



print("Media library contains \(movieCount) movies and \(songCount) songs")

// Prints "Media library contains 2 movies and 3 songs"