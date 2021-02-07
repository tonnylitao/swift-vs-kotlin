class Dice {

    val sides: Int

    val generator: RandomNumberGenerator

    init(sides: Int, generator: RandomNumberGenerator) {

        self.sides = sides

        self.generator = generator

    }

    func roll(): Int {

        return Int(generator.random() * Double(sides)) + 1

    }

}