# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string):
	count_list = []
	i = 0
	while i < len(string):
		j = 0
		count = 1
		while j < len(string):
			if (string[i] == string [j] and i !=j):
				count = count + 1
			j +=1
		count_list.append([string[i], count])
		i +=1
	for array1 in count_list:
		for ind, array2 in count_list:
			if array1[1] > array2[1]:
				count_list.pop(ind)
	return count_list[0]



	


	








print(
  'most_common_letter("abca") == ["a", 2]: ' +
  str(most_common_letter('abca') == ['a', 2])
)
print(
  'most_common_letter("abbab") == ["b", 3]: ' +
  str(most_common_letter('abbab') == ['b', 3])
)