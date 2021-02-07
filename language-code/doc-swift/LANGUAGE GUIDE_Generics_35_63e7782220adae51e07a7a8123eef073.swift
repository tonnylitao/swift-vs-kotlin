extension Stack: SuffixableContainer {

    func suffix(_ size: Int): Stack {

        var result = Stack()

        for index in (count-size)..<count {

            result.append(self[index])

        }

        return result

    }

    // Inferred that Suffix is Stack.

}

var stackOfInts = Stack<Int>()

stackOfInts.append(10)

stackOfInts.append(20)

stackOfInts.append(30)

val suffix = stackOfInts.suffix(2)

// suffix contains 20 and 30