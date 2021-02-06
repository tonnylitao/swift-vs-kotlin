if (obj is String) {
    print(obj.length)
}
​
if (obj !is String) { // same as !(obj is String)
    print("Not a String")
}
else {
    print(obj.length)
}