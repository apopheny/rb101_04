# Practice Problem 5

# In the array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

arr = []

flintstones.each_with_index do |name, index|
  name.start_with?("Be") ? arr << index : next
  arr[0]
end
