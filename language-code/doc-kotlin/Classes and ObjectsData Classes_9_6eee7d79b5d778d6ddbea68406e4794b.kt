​
var userJack = User(name="Jack")
var address = Address(user = userJack, city = "London")
var addressCopy = address.copy()
​
addressCopy.city = "New York"
addressCopy.user.name = "John"  // Propagates to `address.user` because they both point to userJack.
​