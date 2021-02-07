var breakfastList = [

    ShoppingListItem(),

    ShoppingListItem(name: "Bacon"),

    ShoppingListItem(name: "Eggs", quantity: 6),

]

breakfastList[0].name = "Orange juice"

breakfastList[0].purchased = true

for item in breakfastList {

    print(item.description)

}

// 1 x Orange juice ✔

// 1 x Bacon ✘

// 6 x Eggs ✘