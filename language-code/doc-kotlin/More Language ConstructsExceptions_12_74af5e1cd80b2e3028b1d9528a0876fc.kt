val s = person.name ?: fail("Name required")
println(s)     // 's' is known to be initialized at this point