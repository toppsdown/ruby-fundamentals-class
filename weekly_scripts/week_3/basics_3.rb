# X) Methods: Using Arguments
#
# An argument is the value we give to a method
#
# The argument can be surrounded by optional parenthesis

# Example:
#

# puts is the method
# 'hello' is the argument
puts 'hello'


# [1, 2, 3] is the array
# include? is the method
# 4 is the argument
#
# We are asking: does this array include the number 4?
[1, 2, 3].include?(4)










# X) Methods: defining arguments
#
# To create an argument, we add it to the method definition.
# Arguments are used to pass information into the method.
# The argument name is like a variable that is set when the
# Method is called


# my_method is the method name
# arg_1 is a placeholder for the first argument
# arg_2 is a placeholder for the second argument

def print_arguments(arg_1, arg_2)
  puts arg_1 # We can then use the argument in the method
  puts arg_2
end

print_arguments('hello', 'goodbye') # will print hello, then goodbye


# Exercise:
#
# Write a method that takes an array and an item and checks if the item is in the array


# Answer
def array_has(array_arg, item_arg)
  array_arg.include?(item_arg)
end
# /Answer









# X) Array indexes
#
# Arrays are like lists, but use different numbering.
# The number in the array is called the "index"
#
# List:
#   1) Milk
#   2) Bread
#   3) Eggs

# Array:
#   0) Milk
#   1) Bread
#   2) Eggs

# Milk is in index 0
# Eggs is in index 2

# Example:
#
# To get an item out of the array, we use square brackets
grocery_list_2 = [ 'milk', 'bread', 'eggs' ]

grocery_list_2[0] # => returns 'milk'
grocery_list_2[2] # => returns 'eggs'



# Exercise
# write a method that:
#  1) takes an array as argument
#  2) checks if the first item is equal to the second item

# Tests
affirmative_test = [ 1, 1 ]
negative_test = [ 1, 2 ]



# Answer
def first_equals_second(array_arg)
  array_arg[0] == array_arg[1]
end
# /Answer







# X) Changing an array
#
#
# We can change an array by adding to it with the shovel operator (<<)
# OR we can change it by putting something new in a specific index
#
# Example:
changeable_array = [ 'hello', 'goodbye', 'no', 'yes' ]

changeable_array[2] = 'nope' # Changes 'no' (in index 2) to 'nope'


# Exercise
#
# Using indexes, replace each word with its proper spelling
misspelled_words = [ 'tihs', 'werd', 'iz', 'mispeld' ]


# Answer
misspelled_words[0] = 'this'
misspelled_words[1] = 'word'
misspelled_words[2] = 'is'
misspelled_words[3] = 'misspelled'
# /Answer







# X) Nil: Nothing is something
#
# In programming, there is a concept of nothingness
# What is in an array before you put things in it?

# Exercise
nil_array = []  # An empty array

# Using indexes, get index 3.  What's it return?

# Answer
nil_array[3] # => returns nil
# /Answer




# PBJ exercise



# Plan out tic tac toe.  Walk through the design process







