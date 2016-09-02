def square_nums(num)
	i = 1
	flag = 0
	while i <= num
		if (i * i) < num
			puts (i*i)
			flag = flag + 1
			puts flag
		end

	 	i +=1
	end

	return flag
end
puts square_nums(5) == 2
puts square_nums(10) == 3
puts square_nums(25) == 4