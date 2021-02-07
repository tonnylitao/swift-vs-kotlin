lazy var someClosure = {

    [unowned self, weak delegate = self.delegate] in

    // closure body goes here

}