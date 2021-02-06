var sum = 0
ints.filter { it > 0 }.forEach {
    sum += it
}
print(sum)