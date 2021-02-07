protocol SuffixableContainer: Container {

    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item

    func suffix(_ size: Int) -> Suffix

}