struct SmallRectangle {

    private var _height = TwelveOrLess()

    private var _width = TwelveOrLess()

    var height: Int {

        get { return _height.wrappedValue }

        set { _height.wrappedValue = newValue }

    }

    var width: Int {

        get { return _width.wrappedValue }

        set { _width.wrappedValue = newValue }

    }

}