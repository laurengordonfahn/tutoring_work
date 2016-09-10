# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.
def third_greatest(array):
	first = None
	second = None
	third = None
	if len(array) >= 3:
		for num in array:
			if first == None: 
				first = num
			elif num > first:
				first = num
			
		for num in array:
			if (second == None and num < first):
				second = num
			elif (num > second and num < first):
				second = num
			
		for num in array:
			if (third == None and num < second):
				third = num
			elif (num > third and num < second):
				third = num
		
		return third



print(
  'third_greatest([5, 3, 7]) == 3: ' +
  str(third_greatest([5, 3, 7]) == 3)
)
print(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  str(third_greatest([5, 3, 7, 4]) == 4)
)
print(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  str(third_greatest([2, 3, 7, 4]) == 3)
)