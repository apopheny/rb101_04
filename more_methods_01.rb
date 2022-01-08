# Practice Problems: Methods and More Methods

# Now that we've explored a handful of methods and looked at how they work, let's do a few practice problems to help drive home the concepts we learned about in the last two assignments.

# The goal for these practice problems is to gain a deep understanding of specific concepts, not to rush through them. Do your best to answer the questions without running the example code. You should be able to determine the answers just by looking at the code or by referring to the Ruby docs.
# Practice Problem 1

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3] as select analyzes a collection and returns an array for which each element of that collection is truthy. The block returns false for each object in the comparator num > 5, but then the return value for each iteration is 'hi'. String objects are truthy, and therefore the return value for #.select on each elemenbt of the collection is also truthy, and those values are then passed into the array which #. select returns