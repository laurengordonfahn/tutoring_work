# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def is_odd?(number)

	#WHY WASN"T MODULO WORKING?
	# if (number%2) != 0
	# 	puts "true"
	# 	return true
	number = number.to_i
	if number.odd?
		return true
	else
		return false
	end
end

def add_dashes(odd_number)
	dashed = "-" + odd_number + "-"
	return dashed
end

def ride_too_many_dashes(new_string)
	array = new_string.split("") 
	array_index_remove = []
	
	i =0
	while (i+1) < array.length
		if array[i] == "-"
			if array[i+1] == "-"
				array_index_remove = array_index_remove + [i]
			end
		end
		i += 1
	end
	puts "this is the array_index_remove #{array_index_remove}"

	
	array_index_remove.each do |element|
		array.delete_at(element)
	end

	puts "this is what the array looks like after deletion#{array}"
	new_string = array.join
	puts " this is the new_string with the extra dashes removed #{new_string}"
	return new_string

end

def cut_end_dashes(new_string)
	array = new_string.split("")
	if array[0] == "-"
		array.delete_at(0)
	end
	if array[-1] == "-"
		array.delete_at(-1)
	end

	new_string = array.join
	puts "this is the new_string with its end dashes removed #{new_string}"

	return new_string
end


def dasherize_number(num)
	string_number = num.to_s
	array_number = string_number.split("")

	new_string = ""
	array_number.each do |number|
		if is_odd?(number)
			new_string = new_string + add_dashes(number)
		else
			new_string = new_string + number
		end
	end

	new_string = cut_end_dashes(new_string)
	return ride_too_many_dashes(new_string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

# puts(
#   'dasherize_number(203) == "20-3": ' +
#   (dasherize_number(203) == '20-3').to_s
# )
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
