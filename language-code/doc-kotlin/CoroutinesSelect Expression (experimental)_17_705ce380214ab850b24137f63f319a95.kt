fun CoroutineScope.asyncString(str: String, time: Long) = async {
    delay(time)
    str
}