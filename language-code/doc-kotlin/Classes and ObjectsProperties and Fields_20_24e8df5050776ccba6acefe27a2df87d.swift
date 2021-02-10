class MyTest: XCTestCase {
    lazy var subject = TestSubject()
    
    func setUpWithError() throws {
    }
    
    func test() throws {
        subject.method()  // dereference directly
    }
}
