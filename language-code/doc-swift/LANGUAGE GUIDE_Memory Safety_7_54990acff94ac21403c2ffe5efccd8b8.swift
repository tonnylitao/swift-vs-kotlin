var stepSize = 1



func increment(_ number: inout Int) {

    number += stepSize

}



increment(&stepSize)

// Error: conflicting accesses to stepSize