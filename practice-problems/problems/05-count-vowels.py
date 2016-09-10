# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.

# Difficulty: easy.

def count_vowels(string):

	vowel_count = 0 
	vowel_list = ["a", "e", "i", "o", "u"]
	
	for letter in string:
		for vowel in vowel_list:
			if letter == vowel:
				vowel_count = vowel_count + 1
	return vowel_count 




print('count_vowels("abcd") == 1: ' + str(count_vowels('abcd') == 1))
print('count_vowels("color") == 2: ' + str(count_vowels('color') == 2))
print('count_vowels("colour") == 3: ' + str(count_vowels('colour') == 3))
print('count_vowels("cecilia") == 4: ' + str(count_vowels('cecilia') == 4))
