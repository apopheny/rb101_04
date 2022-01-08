# Continuing on with the idea of building generic methods, let's update our double_numbers method to not only be able to double the values in an array, but to multiply by any number. For example, let's create a method called multiply that can take an additional argument to determine the transformation criteria.

# my_numbers = [1, 4, 3, 7, 2, 6]
# multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

# Try coding a method that allows you to multiply every array item by a specified value:

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(int_array, multiple)
  counter = 0
  output_arr = []

  loop do
    break if counter >= int_array.size
      current_num = int_array[counter]
      output_arr << current_num * multiple
      counter += 1
  end
  
  output_arr
end

p multiply(my_numbers, 3)
p multiply(my_numbers, 7)
p multiply(my_numbers, 0)
