# Write a method that takes in a number and returns True if it is a
# power of 2. Otherwise, return False.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.
def is_power_of_two(num):
	if num == 1:
		return True
	while num % 2 == 0:
		if num == 2:
			return True
		num = num/2

	return False
	



print('is_power_of_two(1) == True: ' + str(is_power_of_two(1) == True))
print('is_power_of_two(16) == True: ' + str(is_power_of_two(16) == True))
print('is_power_of_two(64) == True: ' + str(is_power_of_two(64) == True))
print('is_power_of_two(78) == False: ' + str(is_power_of_two(78) == False))
print('is_power_of_two(0) == False: ' + str(is_power_of_two(0) == False))
