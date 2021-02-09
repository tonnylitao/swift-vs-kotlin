class Person: Human, KotlinMaker {
    var surname: String = ""
    
    init(id: Int, name: String, surname: String) {
        super.init(id: id, name: name)
    }
    
    /*...*/
}
