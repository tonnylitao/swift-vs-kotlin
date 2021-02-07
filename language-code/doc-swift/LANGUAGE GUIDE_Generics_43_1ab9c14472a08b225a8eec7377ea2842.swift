struct NotEquatable { }

var notEquatableStack = Stack<NotEquatable>()

let notEquatableValue = NotEquatable()

notEquatableStack.push(notEquatableValue)

notEquatableStack.isTop(notEquatableValue)  // Error