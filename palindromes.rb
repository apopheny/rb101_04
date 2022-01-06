#  PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

def change_me(string)
  string_arr = string.split(" ")
  counter = 0
  loop do
    break if counter >= string_arr.size
      if ! string_arr[counter]
        counter += 1
        next
      elsif string_arr[counter] == string_arr[counter].reverse ? string_arr[counter] =string_arr[counter].upcase : string_arr[counter]
        counter += 1
      end
  end
  string_arr.join(" ")
end

p change_me("We will meet at noon") == "We will meet at NOON"
p change_me("No palindromes here") == "No palindromes here"
p change_me("") == ""
p change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
