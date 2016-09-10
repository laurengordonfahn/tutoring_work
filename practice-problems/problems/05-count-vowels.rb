# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.

# Difficulty: easy.

def count_vowels(string)
	vowels = ["a", "e", "i", "o", "u"]
	letter_array = string.split('')
	
	i = 0
	vowel_counter = 0
	until i > letter_array.length
		if vowels.include?(letter_array[i])
			vowel_counter = vowel_counter + 1
		else 
			vowel_counter = vowel_counter
		end
	
		i +=1
	end
	vowel_counter
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

print('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
print('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
print('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
print('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
