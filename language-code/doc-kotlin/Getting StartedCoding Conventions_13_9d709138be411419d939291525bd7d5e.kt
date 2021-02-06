class C {
    private val _elementList = mutableListOf<Element>()
​
    val elementList: List<Element>
         get() = _elementList
}