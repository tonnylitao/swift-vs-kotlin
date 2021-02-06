class ResourceDelegate<T> : ReadOnlyProperty<MyUI, T> {
    override fun getValue(thisRef: MyUI, property: KProperty<*>): T { ... }
}
    
class ResourceLoader<T>(id: ResourceID<T>) {
    operator fun provideDelegate(
            thisRef: MyUI,
            prop: KProperty<*>
    ): ReadOnlyProperty<MyUI, T> {
        checkProperty(thisRef, prop.name)
        // create delegate
        return ResourceDelegate()
    }
​
    private fun checkProperty(thisRef: MyUI, name: String) { ... }
}
​
class MyUI {
    fun <T> bindResource(id: ResourceID<T>): ResourceLoader<T> { ... }
​
    val image by bindResource(ResourceID.image_id)
    val text by bindResource(ResourceID.text_id)
}