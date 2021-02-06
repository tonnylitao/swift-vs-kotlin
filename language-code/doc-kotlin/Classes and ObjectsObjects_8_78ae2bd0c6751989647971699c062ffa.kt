object DataProviderManager {
    fun registerDataProvider(provider: DataProvider) {
        // ...
    }
​
    val allDataProviders: Collection<DataProvider>
        get() = // ...
}