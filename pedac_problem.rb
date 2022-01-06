PROBLEM:

  Given a string, write a method `palindrome_substrings` which returns
  all the substrings from a given string which are palindromes. Consider
  palindrome words case sensitive.

Test cases:

  palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
  palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
  palindrome_substrings("palindrome") == []
  palindrome_substrings("") == []

Rules

  output only palindromes
  if multiple palindromes, output from greatest largest to smallest
  if no palindromes, output empty array
  if no string, output empty array

Questions
  What is a plaindrome?
  palindrome: 2+ characters that are the same value if reversed

  Is the output case sensitive?
  Yes. Case-sensitive: 'abcddcbA' != 'Abcddcba'

  If the string contains duplicate palindromes, should they appear in the output for each instance?
  Unsure. I'm assuming no, given the lack of a person to ask.

  Will only single strings or empty values be tested?
  Unsure. I'm assuming yes, given the lack of a person to ask.

Algorithm
  
input: string
output: array of strings

BEGIN

- Receive a string
- Call main method on string
- METHOD:
  Is the string empty?
    YES: Output empty array
    NO: push string to substring method
   
    - METHOD: (get an array of all possible substrings)
      - create an empty array, substrs
      - create counter starting at 0 for iteration by index position
      - create a substring length counter beginning at 1 for range setting purposes 
         (0..1) == length of smallest possible palindrome

      OUTER LOOP
        - break if substring length > string length
            largest possible palindrome is the string itself
          
          INNER LOOP
          - break if counter >= (string length - substring length counter)
              for 'abcd' index postion 3 would not yield a valid substring, 
              at best one character and at worst an exception
          - beginning at index position 0 (initial counter value), push to substr all
            substrings at the length of (counter value..(counter value + substring length)),
          - counter value + 1

        - reset counter to 0 to begin at index position 0 on next iteration
        - substring length counter + 1

      return substrs array
  
  palindromes = [results of substring for which any entry is == that entry reversed]

  Were there any palindromes?
    YES: sort from largest to smallest with duplicates removed
      return results
    NO: return empty array

END
