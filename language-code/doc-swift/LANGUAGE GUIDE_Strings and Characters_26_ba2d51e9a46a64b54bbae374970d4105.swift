let badStart = """

one

two

"""

let end = """

three

"""

print(badStart + end)

// Prints two lines:

// one

// twothree



let goodStart = """

one

two



"""

print(goodStart + end)

// Prints three lines:

// one

// two

// three