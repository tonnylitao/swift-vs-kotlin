for item in library {

    if val movie = item as? Movie {

        print("Movie: \(movie.name), dir. \(movie.director)")

    } else if val song = item as? Song {

        print("Song: \(song.name), by \(song.artist)")

    }

}



// Movie: Casablanca, dir. Michael Curtiz

// Song: Blue Suede Shoes, by Elvis Presley

// Movie: Citizen Kane, dir. Orson Welles

// Song: The One And Only, by Chesney Hawkes

// Song: Never Gonna Give You Up, by Rick Astley