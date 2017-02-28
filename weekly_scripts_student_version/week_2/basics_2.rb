# X) Methods: Creating
#
# We've used the puts method
# To create our own method we need to use the format:

# def: is the start of the method
# my_method: is the name of the method
# end: is the end of the method

def my_method
  # your code here
end

# Once the method is defined we can call it by it's name
my_method


# Example:
#
def print_my_city
  puts "Boston"
end

print_my_city


# Exercise:
#
# Write a method that prints your name






# Exercise: starting a game
#
# Last week we wrote a number guessing game
# lets write a method that starts the number guessing game

# 1. The code below is copied from the number guessing game
# 2. Wrap it in a method named 'start_game'
# 3. In Repl.it, click run
# 4. Start the game in the console by typing 'start_game'

# Below is the game code
# chosen_number = rand(1..100)

# loop do
#   puts 'Guess a number between 1 and 100'
#   user_input = gets.chomp.to_i

#   if user_input == chosen_number
#     break
#   end

#   if user_input < chosen_number
#     puts "Guess higher"
#   end

#   if user_input > chosen_number
#     puts "Guess lower"
#   end
# end







# X) Scope: where can I use this thing?

# Variables defined outside the method can't be used in the method
#
# Exercise:
# call the method 'my_method' in the console, and see the error
my_name = 'Ethan'

def my_method
  puts my_name
end




# Variables defined inside the method can't be used outside the method
#
# Exercise:
#   write this in console to see the error:  puts my_name_2
#

def my_method_2
  my_name_2 = 'Ethan'
end




# X) Methods: Returning a value
#
# Methods always return something.  The last value returned in the
# method is automatically the return value:

#

def method_with_return_value_123
  puts 'hello'

  123
end





# X) Arrays: making a list
#
# - Arrays are created using square brackets: `[]`
# - Each item is seperated by a comma
# - Items in arrays can be anything (strings, numbers, other arrays)
# - Arrays can be defined over multiple lines

my_shopping_list = ['item 1', 'item 2', 'item 3']

my_grocery_list = [
  'milk',
  'sugar',
  'bread'
]


# Exercise:
#   Make a list of the ingredients for a peanut butter and jelly sandwich






# X) Array inclusion: is this item in our list?
#
# Arrays have a method called "include?"
# To call a method on an array, we use a period `.`
#
# my_array: the array we want to search
# `.` : the period is how we use the array method
# include?: is the name of the method
#        Note: the question mark is just part of the name and doesn't do anything special)
# 'item to check' : the thing we want to check for
#        Note: When you pass something into a method, it is called an "argument"
#
# We are asking my_array if it includes the string 'item to check'
#
# my_array.include?('item to check')

# Example:
#
my_shopping_list = [
  'milk',
  'sugar',
  'bread'
]

# Check my_shopping_list array for the argument 'milk'
my_shopping_list.include?('milk') # => returns true

# Check my_shopping_list array for the argument 'soda'
my_shopping_list.include?('soda') # => returns false


# Exercise:
#
# In the Repl.it console:
#
# 1) Create an array that includes your 5 favorite foods
# 2) use the include? method to check if your favorite foods include pizza




# X) Array: adding items to the array
#
# To add items to an array after it's been created:
# Use the shovel operator: <<

# Example
my_array = [] # Empty array
my_array << 'milk'  # my_array is now [ 'milk' ]
my_array << 'bread' # my_array is now [ 'milk', 'bread' ]
my_array << 'eggs' # my_array is now [ 'milk', 'bread', 'eggs' ]



# Exercise:
#
# Write a loop that repeatedly asks the user for words.
# If user enters the same thing twice, it breaks the loop and prints out
# the array that the user entered

# 1) Define a method `user_entry_checker`
#
# 2) create an empty array and save it to a variable `user_entries`
#
# 3) start a loop
#   4) Tell user to enter something
#   5) Get user input and save it to a variable
#
#   6) Check if user_entries already includes what the user entered
#     7) If so, tell the user what they have entered and break
#         Note: use `to_s` to print out user_entries as a single line
#
#   8) add user input to the `user_entries` list









# X) Boolean operator AND (&&): multiple conditions
#
# Truth table:
#
# true AND true => true
# true AND false => false
# false AND true => false
# false AND false => false

# Example:
"hello" == "hello" && 1 == 1 # returns true
"hello" == "goodbye" && 1 == 1 # returns false
"hello" == "hello" && 1 == 2 # returns false
"hello" == "goodbye" && 1 == 2 # returns false


# Exercise:
#   What does each boolean expression return?

my_string = "hello"
my_num = 1

my_string == "hello" && my_num == 1
my_string == "hello" && my_num == 2




# X) Boolean operator NOT (!): single condition
#
# Truth table:
# NOT true => false
# NOT false => true

# Example
!true # returns false
!false # returns true

!(1 == 1) # returns false
!('hello' == 'goodbye') # returns true






# X) Exercise: Rock Paper Scissors
#
# write a game loop in a method called 'start_rock_paper_scissors'
#
# To test your game:
# you can test the game by calling start_rock_paper_scissors in the console

# 1) define the method to start the game
def start_rock_paper_scissors
  # 2) Create the array of possible options
  # 3) save the array to a variable

  # 4) create the game loop
  loop do
    # 5) Tell user to input their choice (Hint: puts)
    # 6) get user input and save it to a variable (Hint: gets.chomp)

    # 7) Verify that user input is an available option (Hint: if, include?, NOT operator)
    # 8) if it is not, then tell user, and restart the loop
    #    Note: To restart the loop, use the keyword 'next'

    # 9) Get computer choice by randomly choosing from the options array
    #    Note: to choose randomly use the 'sample' method on the array

    # 10) If computer and user chose the same thing, tell the user it was a tie and
    #     restart the loop with 'next'  (Hint: if, ==)

    # 11) Tell the user what they entered and what the computer chose (Hint: print, puts)

    # 12) Tell the user who won (Hint: use if, ==, &&, puts)
    #
    #  Computer choice | User choice | Answer
    #  rock            | paper       | user wins
    #  paper           | scissors    | user wins
    #  scissors        | rock        | user wins
    #
    #  rock            | scissors    | computer wins
    #  paper           | rock        | computer wins
    #  scissors        | paper       | computer wins

    # 13) Break the loop
  end
end
























