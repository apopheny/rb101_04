# Practice Problem 8

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Array#take(n) returns a new array non-destructively which is the first n elements of the caller.

# We can find this on the docs for the Array class

# The given snippet would return [1, 2] and arr would not be altered.