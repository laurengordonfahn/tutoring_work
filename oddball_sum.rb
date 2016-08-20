def oddball_sum(array)
	i = 0
	odds = []
	while i < array.length
		if array[i]%2 != 0
			odds.push(array[i])
		end
		i +=1
	end

	if odds.length > 0
		j = 0
		summed = 0
		while j < odds.length
			summed = summed + odds[j]
			j +=1
		end
	end

	if odds == []
		return 0
	end

	return summed
end

puts oddball_sum([1, 2, 3, 4, 5]) == 9
puts oddball_sum([0, 6, 4, 4]) == 0
puts oddball_sum([1, 2, 1]) == 2
