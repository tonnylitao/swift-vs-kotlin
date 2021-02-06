ints.filter {
    val shouldFilter = it > 0 
    shouldFilter
}
​
ints.filter {
    val shouldFilter = it > 0 
    return@filter shouldFilter
}