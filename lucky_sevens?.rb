def lucky_sevens?(array)
	


	i = 0
	j = 1
	k = 2
	flag = false

	if array[0] + array[-1] + array[-2] == 7 
		flag = true
	end
	if array [0] + array [1] + array [-1] == 7
		flag = true
	end 

	while k < array.length
		if array[i] + array[j] + array[k] == 7
			flag = true
		end
	
		i +=1
		j +=1
		k +=1	
	end

	return flag

end

puts lucky_sevens?([2, 1, 5, 1, 0])
puts lucky_sevens?([0, -2, 1, 8])
puts lucky_sevens?([7, 7, 7,  7])
puts lucky_sevens?([3, 4, 3, 4])