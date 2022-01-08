# Practice Problem 3

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# This would return a new array the elements of which were the same as the calling array. Since #.reject returns an array of elements from a calling collection which, when evaluated, returns false or nil, and since the puts method within the block always returns nil, every element would be selected and returned by the #.reject method.