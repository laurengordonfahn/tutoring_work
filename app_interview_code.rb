### INSTRUCTIONS
#
# Welcome to the App Academy technical interview. Over the next 45 minutes, you
# will be given a series of three programming questions. For each question, you
# will have 15 minutes to write a solution in Ruby, Python, JavaScript, Perl,
# PHP, or Java. We accept partial solutions, and overall logic is more important
# to us than exact syntax, so try not to stress if your solution is incomplete
# or imperfect. Take a deep breath and focus on your approach to the next
# problem.
#
# Talk us through your approach as you work through the problem.  We need to know
# how you communicate the way that you solve problems.  Some people prefer to talk
# while they come to a solution, while other people prefer to walk us through
# after they've done a bit of work.  Either way is fine.
#
# We want to evaluate you on your own work, so the interview is closed-book. You
# are not permitted to consult any outside sources: don't ask others for help,
# search the web for solutions, or refer to any notes or code you may have
# written previously. Don't run your code in any REPL or interpreter, and don't
# share these questions or your solutions with anyone else (even anonymously).
# We take cheating very seriously, and violation is grounds for rejection or
# dismissal from the course.
#
# That said, you may ask your interviewer any questions you might have. We are
# more than happy to help clarify the question or let you know the right syntax
# for the language you're using.
#
# Good luck!

#### Neighbor Sum ####
# Write a function that takes an array of integers and returns a new array with
# each element replaced by the sum of its neighbors.
#
# short_array = [2, 3, 5]
# neighbor_sum(short_array) #=> [3, 7, 3]
#
# long_array = [7, 4, 2, 9, 3, 5]
# neighbor_sum(long_array) #=> [4, 9, 13, 5, 14, 3]

# <<

def neighbor_sum(array)
    i = 1
    j = 2
    k = 0
    new_array = []
    sum = 0
    while i < ((array.length) -1)
        sum = array[j] + array [k]
        new_array << sum
        i +=1
        j +=1
        k +=1
    end
   
   if (array.length == 1)
       sum =  array[1]
       new_array = [sum] + new_array
  end 
  
  if (array.length != 1)
       sum =  array[1]
       new_array = [sum] + new_array
  end
  
   
   sum =  array[-2]
   new_array.push(sum)
   
  return new_array
end 
puts neighbor_sum([7, 4, 2, 9, 3, 5])
# [4, 9, 13, 5, 14, 3]

#### Decode ####
# You are given an encoded string. The code is defined as follows:
# * Each character in the encoded string is followed by a single-digit number.
# * The number represents how many times the character appears in a row.
#
# Write a function that takes in an encoded string and returns the original.
#
# Example:
# encoded_string = "m1i1s2i1s2i1p2i1"
# decoded_string = decode(encoded_string)
# decoded_string # => "mississippi"

def decode(string)
    split_string = string.split("")
    i = 0
    j = 1
    new_array = []
    while j < split_string.length
        new_array << (split_string[i]*split_string[j].to_i)
        i +=2
        j+=2
    end
   return new_array.join("")
end 

# #### Aliquot Sequence ####
# # A number's aliquot sum is the sum of all of its factors excluding itself.
# #
# # For example, the aliquot sum of 10 is: 1 + 2 + 5 = 8
# #
# # We can use the aliquot sum to define a special sequence, called the
# # aliquot sequence. The aliquot sequence of a number begins with the
# # number itself. The second number in the sequence is the first number's
# # aliquot sum, the third number is the second number's aliquot sum, and
# # so on.
# #
# # For example, the first 4 numbers in the aliquot sequence of 10 are: 10, 8, 7, 1
# #
# # Write a function that takes in two numbers, base and n, and returns the
# # aliquot sequence of length n starting with base.
# #
# # Examples:
# # aliquot_sequence(10, 4) # => [10, 8, 7, 1]
# # aliquot_sequence(10, 2) # => [10, 8]
# # aliquot_sequence(7, 4) # => [7, 1, 0, 0]

# def factor(base)
#     i = 1
#     array = []
#     while i < base
#         if base%i == 0
#             array << i
#         end 
#         i +=1
#     end
            
#     return array        
# end 

# def aliquot_sequence(base, n)
#     array = [base]
#     i = 0
#     while i < (n-1)
#         j = 0
#         number = factor(array[i]))
#         sum = 0
#         while j < number.length
#             sum = sum + number[j]
 
#             j +=1
#         end
#         array << sum 
#         i +=1
#     end
    
#     return array
         
        
# end








