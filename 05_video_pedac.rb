# Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

# **Rules:**
# Sequence begins with two
# Each row contains the same number of elements as the row depth
# Each additional element increases by two and this does not reset when a new row begins

# Input: An integer representing the row number from the top
# Output: An integer representing the sum of all integers in the input row from the top

# Data structure: a two-dimensional array

# **ALGORITHM**

# Initialize an empty array

# Receive a number represent the number of rows
# Initialize a counter variable starting with 1
# Initialize a variable containting an integer, starting with 0
# Initialize an outer array
# Initialize an inner array
# Begin loop
#   Add two to the integer variable
#   Push variable to inner array
#   Do this counter times
#   Push inner array to outer array
#   Integer to equal last element of subarray
#   Subarray reset to empty subarray
#   Counter variable increases by one
# #   End loop when counter is equal to input integer
# Return outer array
# Sum the last element in the outer array

def math_solution(int)
  start_val = (int * (int - 1)) + 2
  arr = []
  counter = 0
  loop do
    break if counter >= int
    arr << start_val
    start_val += 2
    counter += 1
  end
  arr.sum
end

def all_rows(int)
  arr = []
  counter = 1
  last_element = 0
  temp_arr = [] 
  loop do
    break if counter > int
        counter.times do 
          last_element += 2
          temp_arr.push(last_element)
        end
    arr.push(temp_arr)
    last_element = temp_arr.last
    temp_arr = []
    counter += 1
  end
  arr
end

def sum_row(int)
  all_rows(int).last.sum
end

p math_solution(7) == 350 && math_solution(7) == sum_row(7)
p math_solution(6) == 222 
p all_rows(1)
p all_rows(2)
p all_rows(3)
p sum_row(7)
