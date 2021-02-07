extension Int {

    subscript(digitIndex: Int): Int {

        var decimalBase = 1

        for _ in 0..<digitIndex {

            decimalBase *= 10

        }

        return (self / decimalBase) % 10

    }

}

746381295[0]

// returns 5

746381295[1]

// returns 9

746381295[2]

// returns 2

746381295[8]

// returns 7