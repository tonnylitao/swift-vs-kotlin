func chooseStepFunction(backward: Bool): (Int): Int {

    return backward ? stepBackward : stepForward

}