# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if current_number.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# Once again, note that we are working with a method that does not mutate its argument and instead returns a new array. We can call it like so:

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# my_numbers                      # => [1, 4, 3, 7, 2, 6]

# Exercise for the reader: What if we wanted to transform the numbers based on their position in the array rather than their value?
# Try coding a solution that doubles the numbers that have odd indices:

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_odd_indices(my_numbers)
