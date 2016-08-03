# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

def factorial(n)
	counter = 1
	factorial_eq = n
	
	if (n == 0  || n == 1 )
		return 1
	elsif n > 0
		while counter < n
			factorial_eq = factorial_eq * (n - counter)
			counter = counter + 1
			return factorial_eq
		end
	else
		puts "n must be n>= 0, this value #{n} does not comply."
	end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)
