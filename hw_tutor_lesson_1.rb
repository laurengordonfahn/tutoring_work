# def ask_n
# 	puts "Give me a number"
# 	n = gets.chomp.to_i
# end

# def sum_all_num_1
# 	n = ask_n
# 	counter = 0
# 	sum = 0
# 	while counter <= n
# 		sum += counter
# 		counter += 1
# 	end

# 	return sum
# end


# #or

# def sum_all_num_2
# 	n = ask_n
# 	sum = 0

# 	(n+1).times do |x|
# 		sum = sum + x
# 	end

# 	return sum
# end


# puts sum_all_num_1
# puts sum_all_num_2


# Question 2 take three numbers and return the largest
def largest_num_1(x, y, z)
	if (x == x.to_i && y == y.to_i && z == z.to_i)
		if (x > y && x > z)
			return puts "x = #{x} is larger than y = #{y} and z = #{z}"
		elsif (y > x && y > z)
			return puts "x = #{y} is larger than x = #{x} and z = #{z}"
		else
			return puts "z = #{z} is larger than x = #{x} and y = #{y}"
		end
	end
end

puts largest_num_1(3, 4, 5)



