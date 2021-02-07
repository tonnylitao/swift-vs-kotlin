// Error: Protocol with associated types can't be used as a return type.

func makeProtocolContainer<T>(item: T) -> Container {

    return [item]

}



// Error: Not enough information to infer C.

func makeProtocolContainer<T, C: Container>(item: T) -> C {

    return [item]

}