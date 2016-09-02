def get_num():
	num = int(raw_input("Give Me a Number and I will tell you if it is Prime"))
	return num

def prime_checker():
	num = get_num()

	if (num >=1 or num <=3):
		return "Your number " +str(num) + " is prime"
	elif num%2 != 0:
		i = 3
		flag = False
		while i < num:
			if num%i != 0:
				flag = True
			else:
				return "Your number " +str(num) + " is not prime"
			i +=1
		if flag == True:
			return"Your number " +str(num) + " is prime"

print(prime_checker())

#WHY CAN"T I DO return print ("") that won't work nor return(print(""))
 