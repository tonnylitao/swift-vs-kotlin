let list = ["a", "b", "c"]

if !(0..<list.count ~= -1) {
    print("-1 is out of range")
}
if list.indices ~= list.count {
    print("list size is out of valid list indices range, too")
}
