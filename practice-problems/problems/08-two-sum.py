# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(array):
	array_ind = []
	for inx1, num1 in array:
		for inx2, num2 in array:
			if (num1 + num2) == 0:
				array_ind.push(inx1)
				array_ind.push(inx2)
				print array_ind
				return array_ind
	print array_ind
	return None




print(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + str(two_sum([1, 3, 5, -3]) == [1, 3])
)
print(
  'two_sum([1, 3, 5]) == nil: ' + str(two_sum([1, 3, 5]) == None)