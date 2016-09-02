# def temp(f):
# 	c = (f - 32) / 1.8
# 	return c


def temp(c):
	f = (c * 1.8) + 32
	return f


c = int(raw_input("Give me a temperature to convert to Fahrenheit"))

print(temp(c))

