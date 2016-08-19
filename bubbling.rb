

def switch(array, index)
	i = 0
	new_array =[]
	while i < array.length
		if i == index[0]
			new_array << array[index[1]]
		elsif i == index[1]
			new_array << array[index[0]]
		else
			new_array << array[i]
		end

		i +=1	
	end
	return new_array
end

# puts switch(["a", "b", "c", "d","e", "f"], [3, 4])



def bubbleing(array)
	no_switch = 0
	while no_switch < ((array.length) -1)
		i = 0
		j = 1
		while j < array.length
			if array[i] > array[j]
				array = switch(array, [i, j])

			else
				no_switch = no_switch + 1
			end
			i +=1
			j +=1
		end
		if no_switch != ((array.length) -1)
			no_switch = 0 
		end
	end
	return array
end

puts bubbleing([2, 11, 10, 4, 1])

