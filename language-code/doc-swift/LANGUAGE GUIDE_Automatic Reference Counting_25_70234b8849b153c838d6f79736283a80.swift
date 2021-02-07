class Department {

    var name: String

    var courses: [Course]

    init(name: String) {

        self.name = name

        self.courses = []

    }

}



class Course {

    var name: String

    unowned var department: Department

    unowned var nextCourse: Course?

    init(name: String, in department: Department) {

        self.name = name

        self.department = department

        self.nextCourse = nil

    }

}