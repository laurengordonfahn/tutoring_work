# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
	array_words = sentence.split(' ')
	longest_word = ""
	word_index = 0
	while word_index < array_words.length
		longest_word = array_words[word_index] 
			if array_words[word_index + 1] != nil
				if array_words[word_index + 1].length > array_words[word_index].length
					longest_word = array_words[word_index + 1]
				end
			else 
				longest_word = longest_word
			end
		word_index +=1
	end
	return longest_word
end


puts longest_word("once upon a time")




# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
