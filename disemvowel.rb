def disemvowel(string)
	string = string.downcase
	
	
	i = 0
	#why must this array be here and not inside the first while?
	array = []
	while i < string.length
		j =0 
		vowel = ["a", "e", "i", "o", "u"]
		
		while j < vowel.length

			if string[i] == vowel[j]
				array = array + [i]	
			end
			j +=1
		end
	
		i +=1
		# puts "array = #{array}"
		# puts "array.length = #{array.length}"
	
	end
	
		puts "array = #{array}"
		puts "array.length = #{array.length}"
	

	k = 0

	
	new_string = ""
	while k < string.length
		flag = 0
		# puts "array length = #{array.length}"
		l = 0
		while l < array.length
			# puts array.length
			if k == array[l].to_i
				flag = flag + 1
				# puts "flag = #{flag}"
			end
			l +=1
		end
		if flag == 0
			new_string = new_string + string[k]
		end
		k +=1
	end

	# puts"new_string=#{new_string}"
	return new_string

end

puts disemvowel("foobar") =="fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou")== ""

#he

