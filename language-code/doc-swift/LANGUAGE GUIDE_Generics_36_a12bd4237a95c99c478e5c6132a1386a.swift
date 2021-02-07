extension IntStack: SuffixableContainer {

    func suffix(_ size: Int): Stack<Int> {

        var result = Stack<Int>()

        for index in (count-size)..<count {

            result.append(self[index])

        }

        return result

    }

    // Inferred that Suffix is Stack<Int>.

}