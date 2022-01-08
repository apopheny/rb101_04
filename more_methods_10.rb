# Practice Problem 10

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil]

# Enumerable#map returns a new Array of the return values of the block when applied to each element in a collection. For Integer element 1, it returns itself, 1. For every other integer it prints the element to screen but returns nil, which is passed into the array that is returned by the method.