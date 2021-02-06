l.lock()
try {
    foo()
}
finally {
    l.unlock()
}