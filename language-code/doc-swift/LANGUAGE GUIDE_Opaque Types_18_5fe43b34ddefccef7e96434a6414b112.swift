func makeOpaqueContainer<T>(item: T): some Container {

    return [item]

}

val opaqueContainer = makeOpaqueContainer(item: 12)

val twelve = opaqueContainer[0]

print(type(of: twelve))

// Prints "Int"