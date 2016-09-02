# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
	string_array = string.split("")
	if (string_array.include?("a") && string_array.include?("z"))
		if (string_array.index("z") - string_array.index("a") <=3 && string_array.index("z") - string_array.index("a")> 0 )
			puts "returning true1"
			return true
		else
			puts "returning false1"
			return false
		end
	else
		puts "returning false2"
		return false
	end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
