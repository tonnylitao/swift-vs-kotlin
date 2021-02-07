var counter = Counter()

counter.dataSource = ThreeSource()

for _ in 1...4 {

    counter.increment()

    print(counter.count)

}

// 3

// 6

// 9

// 12