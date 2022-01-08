# Practice Problem 7

# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The return value would be true. The any method returns true or false if any of the calling objects return truthy when passed into the block. Within the block, puts returns nil, but we then call a second method which evaluates to true if any of the calling objects are odd. 1 and 3 meet that criteria, so the Enumerable#any? method returns true.

# The any method also short-circuits as soon as it meets any evaluation which returns true, so the entire collection is not evaluated, as the first object that is evaluated returns true and further evaluation would not change that.