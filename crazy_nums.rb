def crazy_nums(num)
	i = 1
	array = []
	
	while i < num
		flag = 0
		# puts i%3
		# puts i%5
		if i%3 == 0 
			flag = flag +1
		end
		if i%5 == 0
			flag = flag +1
		end
		
		if (flag != 2 && flag !=0)
			array.push(i)
		end
		puts flag

		i +=1
	end
	return array
end

puts crazy_nums(3) == []
puts crazy_nums(10) == [3, 5, 6, 9]
puts crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]