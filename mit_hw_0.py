# Problem 1
# ask the users to enter his last name
# ask user to enter his firt name
# print the users first and last name in order

last_name = input('Enter your last name:')
first_name = input('Enter your last name:')

print "This is greeting 1"
greeting_statement1 = 'Hello, {} {}, very nice to meet you'.format(first_name, last_name)
print greeting_statement1

#this gives ('Hello', 'Lauren', 'Gordon-Fahn', 'very nice to meet you.')
print "This is greeting 2"
greeting_statement2 = 'Hello', first_name, last_name, "very nice to meet you."
print greeting_statement2

#note that the 'empty' parentheses with a space and the extra space on the book ends of the variables
#are necessary in order that things aren't all one line
print "this is greeting 3"
greeting_statement3 = ('Hello ' + first_name + " " + last_name + " very nice to meet you.")
print greeting_statement3


