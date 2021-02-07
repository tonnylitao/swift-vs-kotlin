@propertyWrapper

struct SmallNumber {

    private var number: Int

    var projectedValue: Bool

    init() {

        self.number = 0

        self.projectedValue = false

    }

    var wrappedValue: Int {

        get { return number }

        set {

            if newValue > 12 {

                number = 12

                projectedValue = true

            } else {

                number = newValue

                projectedValue = false

            }

        }

    }

}

struct SomeStructure {

    @SmallNumber var someNumber: Int

}

var someStructure = SomeStructure()



someStructure.someNumber = 4

print(someStructure.$someNumber)

// Prints "false"



someStructure.someNumber = 55

print(someStructure.$someNumber)

// Prints "true"