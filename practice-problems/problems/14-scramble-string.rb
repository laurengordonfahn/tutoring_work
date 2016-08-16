# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.



def scramble_string(string, positions)


	string_array = string.split("")
	hash = {}
	i = 0
	while i < string.length
		hash[positions[i]] = string_array[i]
		puts "this is the hash #{hash}"
		i += 1
	end

	new_string = ""
	j = 0

	while j < string.length
		new_string = new_string + hash[j]
		puts "this is the new string #{new_string}"
		j +=1
	end


	return new_string
	
	



end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm").to_s
)
# last test was in the wrong order! fixed it