val badStart = """

one

two

"""

val end = """

three

"""

print(badStart + end)

// Prints two lines:

// one

// twothree



val goodStart = """

one

two



"""

print(goodStart + end)

// Prints three lines:

// one

// two

// three