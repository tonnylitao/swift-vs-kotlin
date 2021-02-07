// Make an explicit copy.

var copyOfStepSize = stepSize

increment(&copyOfStepSize)



// Update the original.

stepSize = copyOfStepSize

// stepSize is now 2