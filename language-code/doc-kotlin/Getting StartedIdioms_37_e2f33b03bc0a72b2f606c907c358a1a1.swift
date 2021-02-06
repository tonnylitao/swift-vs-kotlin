let values = ...
guard let email = values["email"] else {
    throw IllegalStateException("Email is missing!")
}
