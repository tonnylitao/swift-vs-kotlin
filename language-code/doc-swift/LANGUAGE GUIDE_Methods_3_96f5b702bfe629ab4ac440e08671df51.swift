class Counter {

    var count = 0

    func increment() {

        count += 1

    }

    func increment(by amount: Int) {

        count += amount

    }

    func reset() {

        count = 0

    }

}