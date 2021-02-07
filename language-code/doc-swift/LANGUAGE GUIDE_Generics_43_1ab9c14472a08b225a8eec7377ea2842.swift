struct NotEquatable { }

var notEquatableStack = Stack<NotEquatable>()

val notEquatableValue = NotEquatable()

notEquatableStack.push(notEquatableValue)

notEquatableStack.isTop(notEquatableValue)  // Error