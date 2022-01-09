# Practice Problem 7

# Create a hash that expresses the frequency with which each letter occurs in this string:

# statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

characters = statement.split(" ").join.chars

frequency = Hash.new

characters.each do |letter|
  (frequency[letter] == nil) ? (frequency[letter] = 1) : (frequency[letter] += 1)
end
