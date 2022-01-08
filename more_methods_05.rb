# Practice Problem 5

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Hash#shift mutates the calling Hash object by removing the first key => value pair, which it then returns as an Array.

# If we don't know, we can refer to the Ruby documentation for Hash and/or its parent classes