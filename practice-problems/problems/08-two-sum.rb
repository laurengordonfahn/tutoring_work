# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
	i = 0
	while i < nums.length
		j = i + 1

		while j < nums.length
			if nums[i] + nums[j] == 0
				return [i,j]
			end
			
			j +=1
		end
	 	
	 	i +=1
	end


	# nums.each_with_index do |idx1,e1|
	# 	nums.each_with_index do |idx2,e2|
	# 		if e1 + e2 == 0
	# 			return [idx1,idx2]
	# 		end
	# 	end
	# end

	# for( i = 0; i<nums.length; i++){
	# 	for(j= i+1; j<nums.length; j++)
	# }

	return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
