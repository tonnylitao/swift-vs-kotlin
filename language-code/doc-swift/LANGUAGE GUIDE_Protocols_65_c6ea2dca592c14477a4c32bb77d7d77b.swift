class Counter {

    var count = 0

    var dataSource: CounterDataSource?

    func increment() {

        if let amount = dataSource?.increment?(forCount: count) {

            count += amount

        } else if let amount = dataSource?.fixedIncrement {

            count += amount

        }

    }

}