def substrings(str)
  counter = 0 # counter ensures that each loop begins at the first index position and ends at the last index position for which there is a valid substring
  substring_size = 1 # counter that begins at 1 as a length of 2, or 0..1 is the smallest substring for which a palindrome can occur
  substrs = []
  loop do
    break if substring_size > str.size
      loop do
        break if counter >= (str.size - substring_size)
        substrs << str[counter..(counter + substring_size)]
        counter += 1
      end
    counter = 0
    substring_size += 1
  end
  substrs
end

def palindrome_substrings(str)
  if str.size > 0 
    palindromes = substrings(str).select { |substring| substring == substring.reverse }
  else 
    palindromes = []
  end
  palindromes.size > 0 ? palindromes.uniq.sort_by! { |string| -string.size } : []
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []
