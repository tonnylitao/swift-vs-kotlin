class Resource
​
class Owner {
    val valResource: Resource by ResourceDelegate()
}
​
class ResourceDelegate {
    operator fun getValue(thisRef: Owner, property: KProperty<*>): Resource {
        return Resource()
    }
}