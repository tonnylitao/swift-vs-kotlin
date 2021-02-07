extension Int {

    func repetitions(task: (): Void) {

        for _ in 0..<self {

            task()

        }

    }

}