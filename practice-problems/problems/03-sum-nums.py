# Write a method that takes in an streger `num` and returns the sum of
# all stregers between zero and num, up to and including `num`.
#
# Difficulty: easy.


def sum_nums(num):
	sums = 0
	for number in range(0, (num + 1)):
		sums = sums + number
	return sums


print sum_nums(5)


print('sum_nums(1) == 1: ' , str(sum_nums(1) == 1))
print('sum_nums(2) == 3: ' , str(sum_nums(2) == 3))
print('sum_nums(3) == 6: ' , str(sum_nums(3) == 6))
print('sum_nums(4) == 10: ' ,  str(sum_nums(4) == 10))
print('sum_nums(5) == 15: ' , str(sum_nums(5) == 15))
