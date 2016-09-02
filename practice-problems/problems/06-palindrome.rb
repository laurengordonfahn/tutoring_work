# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)
	string_array = string.split("")
	forward_counter = 0 
	backward_counter = -1
	puts "this section is running1"
	
	if string_array.length == 1 
		puts" this is running from true 1"
		return true
	end
	puts "this section is running 2"
	puts forward_counter
	puts backward_counter
	while (forward_counter < (string_array.length/2) && (backward_counter > -(string_array.length/2)))
		puts "this section is running 3"
		if string[forward_counter] != string[backward_counter]
			puts "this is running from false"
			return false
		else 
			#string_array[forward_counter] == string_array[backward_counter]
			puts "this is running from true 2"
			return true
		end

		forward_counter +=1
		backward_counter -=1
	end

	puts "this section is running 4"

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
# puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
# puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
