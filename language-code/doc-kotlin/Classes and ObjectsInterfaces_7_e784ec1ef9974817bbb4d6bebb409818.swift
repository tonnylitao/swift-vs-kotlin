import Foundation

protocol Named {
    var name: String { get }
}

protocol Person: Named {
    var firstName: String { get }
    var lastName: String { get }
}

extension Person {
    var name: String {
        get { "\(firstName) \(lastName)" }
    }
}

class Employee: Person {
    let firstName: String
    let lastName: String
    let position: Position
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
