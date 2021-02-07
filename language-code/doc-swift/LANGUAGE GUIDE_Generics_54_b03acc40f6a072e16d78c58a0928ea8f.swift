extension Container {

    subscript<Indices: Sequence>(indices: Indices) -> [Item]

        where Indices.Iterator.Element == Int {

            var result = [Item]()

            for index in indices {

                result.append(self[index])

            }

            return result

    }

}