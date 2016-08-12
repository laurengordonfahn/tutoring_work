# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	i = 0
	big1 = nums[0]
	big2 = nums[1]
	big3 = nums[2]
	
	while i < nums.length
		if nums[i] > nums[i + 1]
			big1 = nums[i]
		else 
			big1 = nums[i + 1]
		end

		i+=1

		big1index = big1.index

	end

	nums.delete_at(big1index)

	while i < nums.length
		if nums[i] > nums[i + 1]
			big2 = nums[i]
		else 
			big2 = nums[i + 1]
		end

		i+=1
		big2index = big2.index
	end

	nums.delete_at(big2index)

	while i < nums.length
		if nums[i] > nums[i + 1]
			big3 = nums[i]
		else 
			big3 = nums[i + 1]
		end

		i+=1

		big3index = big3.index
	end

	return big3
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
