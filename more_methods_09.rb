# Practice Problem 9

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end


# => [nil, 'bear']

# Enumerable#map returns an array with the results of applying the block to the collection being evaluated.

# The if..end in theis block returns the value if the value has a size > 3, which is only true for the value of the second key:value pair. The first key:value pair would return nil as a result of not meeting any of the conditions in the if..end. if..end returns nil if there is no other output designated.