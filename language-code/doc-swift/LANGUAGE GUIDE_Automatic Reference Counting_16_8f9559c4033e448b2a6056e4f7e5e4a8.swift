var john: Person?

var unit4A: Apartment?



john = Person(name: "John Appleseed")

unit4A = Apartment(unit: "4A")



john!.apartment = unit4A

unit4A!.tenant = john