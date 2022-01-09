# Practice Problem 8

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# To the screen we'd print each integer in the numbers Array, and mutate that array by removing the first element, each of which would be returned in its own separate array. The final return method of this method would be the mutated numbers array that was the caller, which should == []

# This is incorrect because the each method is mutating the calling array with each iteration. In the first pass through it mutates the array to [2, 3, 4], but the each method is still looking to move on to the index position 1, which, as a reult of the mutation, is now 3 instead of 2. When that is mutated it looks for the index position 2 on [2, 4], and none exists so it exits. It still returns the calling array, but that is now [2, 4].

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# This would print 1 and 2 to the screen and return [4], [3], and then the calling array numbers = [1, 2]