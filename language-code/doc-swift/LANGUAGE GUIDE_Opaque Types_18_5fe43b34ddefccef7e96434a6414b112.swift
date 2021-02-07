func makeOpaqueContainer<T>(item: T) -> some Container {

    return [item]

}

let opaqueContainer = makeOpaqueContainer(item: 12)

let twelve = opaqueContainer[0]

print(type(of: twelve))

// Prints "Int"