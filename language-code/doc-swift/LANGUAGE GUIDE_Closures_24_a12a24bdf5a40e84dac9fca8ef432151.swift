loadPicture(from: someServer) { picture in

    someView.currentPicture = picture

} onFailure: {

    print("Couldn't download the next picture.")

}