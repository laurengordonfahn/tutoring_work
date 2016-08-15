# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def splitup(string)
	array = string.split("")
	puts "this is array from splitup #{array}"
	return array
end

def first_wordcap(array)
	i = 1
	first_letter = array[0].upcase
	string = first_letter
	while i < array.length
		string = string + array[i]
		 i +=1
	end

	array = string.split('')
	
	puts "this is the array from first_wordcap #{array}"
		return array
end


def lookfor_space(array)
	i = 0
	string = ""
	while i < array.length
		if array[i] == " "
			new_letter = array[i+1].upcase
			array.delete_at(i+1)
			string = string + " " + new_letter
		else
			string = string + array[i]
		end

		i += 1
	end
	array = string.split("")
	puts "this is the array from lookfor_space #{array}"
	return array
end

def capitalize_words(string)
	array = splitup(string)
	array = first_wordcap(array)
	array = lookfor_space(array)

	final_string = array.join
	puts "this is the final_string #{final_string}"
	return final_string

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
