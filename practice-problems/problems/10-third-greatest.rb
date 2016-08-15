# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def biggestnumber_delete(nums)
	i = 0
	big1 = nums[0]
			
	while i < nums.length
		
		if big1 < nums[i]
			big1 = nums[i]
		end
	i+=1
	end
	
	nums.delete(big1)

	return nums
end
	
	
	
def third_greatest(nums)
	2.times do
		biggestnumber_delete(nums)
	end


	i = 0
	big1 = nums[0]
			
	while i < nums.length
		
		if big1 < nums[i]
			big1 = nums[i]
		end
	i+=1
	end
	

	return big1	 
end


	
# # These are tests to check that your code is working. After writing
# # your solution, they should all print true.

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
