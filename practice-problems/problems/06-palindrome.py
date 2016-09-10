# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome(string):
	flag = False
	if (len(string) == 1 or len(string) == 0):  
		flag = True

	for letter in string:
		i = 1
		while i < len(string):
			if letter == string[(len(string) - i)]:
				flag = True
			if flag == False:
				return False
			i +=1
	return flag





print('palindrome("abc") == false: ' + str(palindrome('abc') == False))
print('palindrome("abcba") == true: ' + str(palindrome('abcba') == True))
print('palindrome("z") == true: ' + str(palindrome('z') == True))
