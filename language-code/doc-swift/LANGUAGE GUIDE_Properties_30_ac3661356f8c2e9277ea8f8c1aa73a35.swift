enum Size {

    case small, large

}



struct SizedRectangle {

    @SmallNumber var height: Int

    @SmallNumber var width: Int



    mutating func resize(to size: Size): Bool {

        switch size {

        case .small:

            height = 10

            width = 20

        case .large:

            height = 100

            width = 100

        }

        return $height || $width

    }

}