let values = ...
guard let email = values["email"] else {
    throw Error.illegalStateException("Email is missing!")
}

//-👏
