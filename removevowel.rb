def remove_vowel(string)
	i = 0 
	new_string = ""
	while i < string.length
		if (string[i] != "a" && string[i] != "e" && string[i] != "i" && string[i] != "o"&& string[i] != "u")
			new_string = new_string + string[i]
		end

		i +=1
	end

	puts new_string
	return new_string

end

# puts remove_vowel("foobar") == "fbr"
# puts remove_vowel("ruby") == "rby"
# puts remove_vowel("aeiou") == ""

