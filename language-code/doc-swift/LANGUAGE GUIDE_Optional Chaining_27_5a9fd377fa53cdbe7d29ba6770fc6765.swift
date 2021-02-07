var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]

testScores["Dave"]?[0] = 91

testScores["Bev"]?[0] += 1

testScores["Brian"]?[0] = 72

// the "Dave" array is now [91, 82, 84] and the "Bev" array is now [80, 94, 81]