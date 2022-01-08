# Practice Problem 2

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# When passed a block .count returns the number of elements for which the block is truthy when applied. When passed an argument it returns the number of elements which are == to that argument. If no argument or block is given, it returns the number of elements in the caller.

# We can find this out on the documentation for the Enumerable class.

# This code would return 2.