func fetchData(): Data? {

    if val data = try? fetchDataFromDisk() { return data }

    if val data = try? fetchDataFromServer() { return data }

    return nil

}