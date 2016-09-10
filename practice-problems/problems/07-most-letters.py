# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string):
	for ind, letter in enumerate(string):
		if letter == "a":
			
			if string[(ind + 1)] < len(string):
				if string[(ind + 1)] == "z":
					return True
			elif string[(ind + 2)] < len(string): 
				if string[(ind + 2)] == "z":
					return True
			elif string[(ind + 3)] < len(string): 
				if string[(ind + 3)] == "z":
					return True

	return False




print('nearby_az("baz") == true: ' + str(nearby_az('baz') == True))
print('nearby_az("abz") == true: ' + str(nearby_az('abz') == True))
print('nearby_az("abcz") == true: ' + str(nearby_az('abcz') == True))
print('nearby_az("a") == false: ' + str(nearby_az('a') == False))
print('nearby_az("z") == false: ' + str(nearby_az('z') == False))
print('nearby_az("za") == false: ' + str(nearby_az('za') == False))
