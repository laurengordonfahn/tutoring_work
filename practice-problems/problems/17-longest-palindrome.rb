# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end


def longest_palindrome(string)
  i = 0
 
  mini_string = ""
  longest_mini = ""
  array_long_j = [0]

  while i < string.length
    j = 1
    while j < string.length
      if string[i] == string[j]
        mini_string = string.slice(i, (j-i+1))
        puts "this is mini_string #{mini_string} when i= #{i} & j=#{j}"
        
        if palindrome?(mini_string)
          if mini_string.length > longest_mini.length
            longest_mini = mini_string
            array_long_j =[j]
          end
        end
      end

      puts "this is longest_mini #{longest_mini}"
      j+=1
    
    end

    if array_long_j[0] > (string.length - i)
      return longest_mini
    end
      
    i+=1
   
  end
end








# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
