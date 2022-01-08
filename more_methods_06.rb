# Practice Problem 6

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# It should be 11, as the Array#pop method destructively removes and returns the last element of the calling Array, and the .size method returns the length of its caller, which would be 'caterpiller' in the given example, and 'caterpiller'.size == 3.