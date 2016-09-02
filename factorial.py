def get_num():
	n = int(raw_input("What number would you like factorialed"))
	return n

def factorial(get_num):
	fac = 1
	for n in range(1, (get_num +1)):
		fac = n * fac
	return fac

print(factorial(get_num()))