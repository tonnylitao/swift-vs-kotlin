typealias Predicate<T> = (T) -> Bool

func foo(p: Predicate<Int>) -> Bool {
    p(42)
}


let f: (Int) -> Bool = { $0 > 0 }
print(foo(p: f)) // prints "true"

let p: Predicate<Int> = { $0 > 0 }
print([1, -2].filter(p)) // prints "[1]"
