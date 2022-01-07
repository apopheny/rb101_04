# Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

# **Rules:**
# Sequence begins with two
# Each row contains the same number of elements as the row number from the top
# Each additional element increases by two and this does not reset when a new row begins

# Input: An integer representing the row number from the top
# Output: An integer representing the sum of all integers in the input row from the top

# Data structure: a two-dimensional array

# **ALGORITHM**

# Initialize an empty array
# Receive the input integer representing the row number from the top
# From 1 until the input integer, output arrays which count by two starting with two, each row the length of the row integer
  # 1 time +2
  # 2 times 1.last 
# Sum up and return the last array


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
  arr = [[0]]
  start_val = arr.last.last
  row_counter = 0
  index_counter = 0
  until row_counter >= int
    arr[row_counter][index_counter] += 2    
    row_counter += 1
    index_counter += 1
  end
 p arr
end

p math_solution(7) == 350
p math_solution(6) == 222 
all_rows(2)


# 01    02      02	      2                         1   +1
# 02    05      10	      4 6                       3   +2
# 03    10      30	      8 10 12                   5   +2
# 04    17      68	      14 16 18 20               7
# 05    26      130     	22 24 26 28 30            9
# 06    37      222     	32 34 36 38 40 42         11
# 07    50      350     	44 46 48 50 52 54 56      13