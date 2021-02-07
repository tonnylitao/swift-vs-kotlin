val department = Department(name: "Horticulture")



val intro = Course(name: "Survey of Plants", in: department)

val intermediate = Course(name: "Growing Common Herbs", in: department)

val advanced = Course(name: "Caring for Tropical Plants", in: department)



intro.nextCourse = intermediate

intermediate.nextCourse = advanced

department.courses = [intro, intermediate, advanced]