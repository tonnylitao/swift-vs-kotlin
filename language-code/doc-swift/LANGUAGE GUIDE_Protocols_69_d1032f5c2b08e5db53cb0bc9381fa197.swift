counter.count = -4

counter.dataSource = TowardsZeroSource()

for _ in 1...5 {

    counter.increment()

    print(counter.count)

}

// -3

// -2

// -1

// 0

// 0