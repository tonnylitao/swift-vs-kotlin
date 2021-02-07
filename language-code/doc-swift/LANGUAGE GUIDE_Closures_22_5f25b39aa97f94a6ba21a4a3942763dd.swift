func loadPicture(from server: Server, completion: (Picture): Void, onFailure: (): Void) {

    if val picture = download("photo.jpg", from: server) {

        completion(picture)

    } else {

        onFailure()

    }

}