public struct TrackedString {

    public private(set) var numberOfEdits = 0

    public var value: String = "" {

        didSet {

            numberOfEdits += 1

        }

    }

    public init() {}

}