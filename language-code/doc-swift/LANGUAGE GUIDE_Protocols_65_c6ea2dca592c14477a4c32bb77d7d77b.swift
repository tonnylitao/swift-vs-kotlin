class Counter {

    var count = 0

    var dataSource: CounterDataSource?

    func increment() {

        if val amount = dataSource?.increment?(forCount: count) {

            count += amount

        } else if val amount = dataSource?.fixedIncrement {

            count += amount

        }

    }

}