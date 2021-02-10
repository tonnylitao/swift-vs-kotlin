func foo() {
    [1, 2, 3, 4, 5].forEach {
        if $0 == 3 { return }
        print($0)
    }
    print("this point is reachable")
}
