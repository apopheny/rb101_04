# Practice Problem 4

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# {
#   'a' => 'ant',
#   'b' => 'bear',
#   'c' => 'cat'
# }

# We call the #Enumerable.each_with_object method on the Array of strings, assigning an empty hash by passing {} in as an argument. We then assign a local method variable 'value' for each element, and a variable 'hash' for the empty hash to which we are passing block results.

# hash[value] = value would iterate over each object in the collection and assign it to the hash as {value => value}. Since each object in the collection is a string, which has an index, hash[value[0]] refers to the first letter in each each string in the collection, which we assign as a key with the value being the string. We then store the result to the hash, which, when all iterations are complete, is the return value of the method.