@objc protocol CounterDataSource {

    @objc optional func increment(forCount count: Int) -> Int

    @objc optional var fixedIncrement: Int { get }

}