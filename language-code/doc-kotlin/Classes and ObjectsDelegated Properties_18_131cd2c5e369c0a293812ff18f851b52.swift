func example(computeFoo: @autoclosure () -> Foo) {
    
    if (someCondition && computeFoo()) {
        ...
    }
}
