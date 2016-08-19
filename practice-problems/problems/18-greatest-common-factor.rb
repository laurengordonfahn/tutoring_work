# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
	if ((number1 || number2) == 0)
		return 1
	end
	small_num = 0
	big_num = 0
	if number1 < number2
		small_num = number1
		big_num = number2
	else 
		small_num = number2
		big_num = number1
	end 
	
	i = 1
	factors = []
	while i <= small_num
		if small_num%i == 0
			factors.push(i)
		end
		i+=1
	end

	j = 0
	big_factors = []
	while j < factors.length
		if big_num%factors[j] == 0
			big_factors.push(factors[j])
		end
		j +=1
	end
	if big_factors[((big_factors.length)-1)] != nil
		return big_factors[((big_factors.length)-1)]
	else
		puts "#{number1} and #{number2} have no common factors"
	end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
