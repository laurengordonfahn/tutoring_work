def ask()
	puts("Give me a start number")
	start = gets.chomp.to_i

	puts("Give me a stop number")
	stop = gets.chomp.to_i

	return[start, stop]
end

def prime_print()
	array = ask()

	j = array[0]
	
	prime_array = []
	while j < (array[1]+ 1)
		flag = false
		if  (j <=3 && j >=1)
			flag = true
			prime_array.push(j)
		elsif j%2 != 0
			i = 3
			while i < j
				if j%2 != 0
					if j/i != 0
						flag = true
					else 
						flag = false
					end
				end
				i +=1
			end
			if flag == true
					prime_array.push(j)
			end
		end
		
		j +=1
	end
	
	return prime_array	

end

puts(prime_print)
