enum ServerResponse {

    case result(String, String)

    case failure(String)

}



val success = ServerResponse.result("6:00 am", "8:09 pm")

val failure = ServerResponse.failure("Out of cheese.")



switch success {

case val .result(sunrise, sunset):

    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")

case val .failure(message):

    print("Failure...  \(message)")

}

// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."