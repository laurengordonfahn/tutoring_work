
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	end_hash = {}
	count = 0
	work_array = string.split('')
	

	work_array.each do |letter|
		count = work_array.count(letter)
		end_hash[letter] = count
	end
	
	puts end_hash

	i = 0
	most_often = end_hash[work_array[0]]
	ans = []
	
	end_hash.each do |letter, count|
		if most_often <=  end_hash[letter]
			most_often = end_hash[letter]
			ans = [letter, count]
		else
			first = work_array[0]
			second = end_hash[first]
			ans = [first, second]
		end
	end
	puts ans
	return ans
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
