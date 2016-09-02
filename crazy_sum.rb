def crazy_sum(array)
	i = 0
	sum_array = []
	while i < array.length
		sum_array.push(array[i]*i)

		i+=1
	end
	j = 0
	sum = 0
	while j < sum_array.length
		sum = sum + sum_array[j]
		puts sum
		

		j+=1
	end
	return sum
end

puts crazy_sum([2]) == 0 # (2*0)
# puts crazy_sum([2, 3]) == 3 # (2*0) + (3*1)
# puts crazy_sum([2, 3, 5]) == 13 # (2*0) + (3*1) + (5*2)
# puts crazy_sum([2, 3, 5, 2]) == 19 # (2*0) + (3*1) + (5*2) + (2*3)