

def switch(array, indicies)

	# first = ""
	# second = ""
	# new_indicies = []

	# new_indicies[0] = indicies[1]
	# new_indicies[1] = indicies[0]

	# puts new_indicies

	i = 0
	new_array = []
	while i < array.length
		
		j = 0 
		while j < indicies.length
			
			if i == indicies[j]
				if indicies[j]==indicies[0]
					puts "if is running i=#{i}, j=#{j}"
					new_array[i] = array[indicies[1]]
					i+=1
					puts "new_array #{new_array}"
				else
					puts "else is running i=#{i}, j=#{j}"
					new_array[i] = array[indicies[0]]
					puts "new_array #{new_array}"

				end

			else

			new_array[i] = array[i] 
			puts "new_array #{new_array} when i=#{i}, j=#{j}"

			end	
			j+=1


		end

		
	

		i +=1
	end
	return new_array
end

puts switch(["a", "b", "c", "d","e", "f"], [1, 2])

def bubbleing(array)
	i = 0
	j = 1
	switch_count = [true
	while j < array.length
		if array[i] > array[j]
			switch(array,[i,j])
			switch_count = true
		else
			switch_count = false
		end
		j +=1
		i +=1
	end


