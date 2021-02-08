protocol MyAbstractClass {
    func doSomething()
    func sleep()
}

class AClass: MyAbstractClass {
  func doSomething() { ... }
  func sleep() { ... }
}
​
func main() {
    val myObject = AClass()
    myObject.doSomething()
}

//-👏
