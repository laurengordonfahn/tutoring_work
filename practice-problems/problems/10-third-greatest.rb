# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
	i = 0
	big1 = 0
	length_of_array = nums.length

	3.times do
		nums.each do |number|
			
			while i < num.length
				
				if number == nums[i]
					big1 = number
				elsif number < nums[i]
					big1 = nums[i]
				else 
					big1 = number
				end
				i++
			end
		
			until length_of_array == (length_of_array - 2)
				nums.delete(big1)
			end
		end
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
