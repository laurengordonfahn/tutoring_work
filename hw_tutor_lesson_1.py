# Question 1 take a number and sum all the numbers that come after it 

def ask_for_num():
	n = int(raw_input('Please, give me a number'))
	return n

def sum_num_less_n():
	n = ask_for_num()
	ans = 0
	for x in range[:n+1]:
		ans += x
	return ans


# driver code
print sum_num_less_n



# Question 2 take three numbers and return the largest of the three

def largest_num_1():
	x = ask_for_num()
	y = ask_for_num()
	z = ask_for_num()
	if (x == int(x) and y == int(y) and z == int(z)):
		if (x > y and x > z):
			return print("x = "+  x + "is larger than y = "+ y  , "and z = "+  z)
		elif (y > x and y > z):
			return print("y = "+  y + "is larger than x = "+ x  + "and z = "+  z)
		else:
			return print("z = "+  z + "is larger than x = "+ x  + "and y = "+  y)
		



puts largest_num_1()
