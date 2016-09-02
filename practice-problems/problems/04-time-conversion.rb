# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
	hrs = (minutes/60)
	mins = (minutes - (hrs * 60)) 

	if mins < 10
		mins = "0#{mins}"
	end
	return ("#{hrs}:#{mins}")

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
