lazy var someClosure = {

    [unowned self, weak delegate = self.delegate]

    (index: Int, stringToProcess: String) -> String in

    // closure body goes here

}