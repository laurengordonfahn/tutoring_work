# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.


def longest_word(string):
	string_array = string.split(" ")
	long_word = ""
	print ("longest word",long_word)
	for word in string_array:
		if (len(word) > len(long_word)):
			long_word = word
	return long_word


print(
  'longest_word("short longest") == "longest": ' ,
  str(longest_word('short longest') == 'longest')
)
print(
  'longest_word("one") == "one": ' ,
  str(longest_word('one') == 'one')
)
print(
  'longest_word("abc def abcde") == "abcde": ' ,
  str(longest_word('abc def abcde') == 'abcde')
)
