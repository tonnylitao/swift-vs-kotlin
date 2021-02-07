let department = Department(name: "Horticulture")



let intro = Course(name: "Survey of Plants", in: department)

let intermediate = Course(name: "Growing Common Herbs", in: department)

let advanced = Course(name: "Caring for Tropical Plants", in: department)



intro.nextCourse = intermediate

intermediate.nextCourse = advanced

department.courses = [intro, intermediate, advanced]