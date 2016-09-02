def ask():
	start = int(raw_input("Give me a starting number"))
	stop = int(raw_input("Give me an ending number"))

	return[start,stop]

#YOU CAN NEVER HAVE A FUNCTION CALLED AS ARGUMENT-  ASK IS A NUMBER VALUE BELOW!
def prime_print():
	array = ask()

	prime_array = []

	i = array[0]
	j = array[1]

	while i < (j+1):
		
		if (i <=3 and i <=1):
			prime_array.append(i)
		elif i%2 != 0:
			k = 3
			flag = False
			while k < i:
				if i/k !=0:
					flag = True
				else:
					flag = False
					break
				k +=1
			if flag == True:
				prime_array.append(i)
		i +=1

	return prime_array

print(prime_print())


				





