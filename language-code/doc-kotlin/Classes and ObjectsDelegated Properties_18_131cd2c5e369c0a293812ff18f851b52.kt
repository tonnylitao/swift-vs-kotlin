fun example(computeFoo: () -> Foo) {
    val memoizedFoo by lazy(computeFoo)
​
    if (someCondition && memoizedFoo.isValid()) {
        memoizedFoo.doSomething()
    }
}