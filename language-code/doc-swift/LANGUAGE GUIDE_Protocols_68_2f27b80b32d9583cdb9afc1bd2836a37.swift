class TowardsZeroSource: NSObject, CounterDataSource {

    func increment(forCount count: Int): Int {

        if count == 0 {

            return 0

        } else if count < 0 {

            return 1

        } else {

            return -1

        }

    }

}