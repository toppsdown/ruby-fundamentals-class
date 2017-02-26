
# X) Iterator: repeating code
#
# An iterator goes through an entire list and repeats
# code for each item in the list

# Example:
#
# We call the each iterator method on an array of numbers
# for each number in the list, we assign it to the variable 'number'
# then we puts the number
#
# each: the iterator method
# do/end: the beginning of the 'block' of code
# |number|: the variable that gets set to each number.  This is very similar to
#          method arguments and can be named anything you want

[ 1, 2, 3, 4, 5 ].each do |number|
  puts number
end



# Exercise:
#
# using each, puts out the double of the number
def print_double
  [ 1, 2, 3, 4, 5 ].each do |number|
    # Your code here
  end
end

# Answer
def print_double
  [ 1, 2, 3, 4, 5 ].each do |number|
    puts number * 2
  end
end
# /Answer




# Exercise:
#
# using each, define a method that:
#
# 1) takes an array
# 2) puts out each item in the array

def print_array(array)
  # Your code here
end


# Answer
def print_array(array)
  array.each do |thing|
    puts thing
  end
end
# /Answer








# X) Memoizer pattern: keep a running tally
#
# When we do math in our heads, we keep a running tally of
# the value.  This is called "memoizing"

# Example:
# 2 + 19 + 25 + 4 + 7
#
# In our heads, we would do:
# 2 + 19 = 21
# 21 + 25 = 46
# 46 + 4 = 50
# 50 + 7 = 57
#
# Answer is 57

# In code we can do something similar
#
# Example:
# 2 + 19 + 25 + 4 + 7
#
# sum = 0
# sum = sum + 2  # sum equals 2
# sum = sum + 19 # => sum equals 21
# sum = sum + 25 # => sum equals 46
# sum = sum + 4  # => sum equals 50
# sum = sum + 7  # => sum equals 57
#
# sum now equals 57



# Exercise: Sum the numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates a variable for the sum
# 3) Iterates over the list of numbers
# 4) adds each number to the sum
# 4) returns the sum

def sum_array(array)
  # Your code here
end

# Test
puts sum_array([10, 20, 30]).to_s # should return 60

# Answer
def sum_array(array)
  sum = 0

  array.each do |number|
    sum = sum + number
  end

  sum
end
# /Answer



# X) Memoize with arrays
#
# Exercise: Double all numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates an empty array in a variable
# 3) iterates over the given array of numbers
# 4) doubles the number, and adds it to the new array (Hint: <<)
# 5) returns the new array

def double_array(array)
  # your code here
end

# Test
puts double_array([2, 5, 10]).to_s # Should return [ 4, 10, 20 ]

# Answer
def double_array(array)
  output_array = []

  array.each do |thing|
    output_array << thing * 2
  end

  output_array
end
# /Answer



# X) Memoize: Filtering values from an array
#
# Exercise: Select all even numbers
#
# Write a method that:
# 1) takes an array of numbers
# 2) creates an empty array in a variable
# 3) iterates over the given array of numbers
# 4) if number is even, add to the new array
#    Note: Use module operator (%) to check if item is even
# 5) returns the new array

def select_evens(array)
  # your code here
end

# Test
puts select_evens([2,3,4,5,6]).to_s # Should return [2,4,6]

# Answer
def select_evens(array)
  output_array = []

  array.each do |number|
    if number % 2 == 0
      output_array << number
    end
  end

  output_array
end
# /Answer


# X) Iterators: answering a question

# Exercise 6: rewrite the include? method
#
# Write a method that:
# 1) takes an array and a thing
# 2) creates a variable to store answer
# 3) iterates over the given array
# 4) if array includes thing, set the variable to true
# 5) returns the answer variable

def array_includes?(array, thing_to_check)
  # Your code here
end

# Test
puts array_includes?([1,5,7], 5).to_s # => should return true
puts array_includes?([1,5,7], 'hello').to_s # => should return false

# Answer
def array_includes?(array, thing_to_check)
  answer = false

  array.each do |thing|
    if thing == thing_to_check
      answer = true
    end
  end

  answer
end
# /Answer



# X) Iterators:
#
# Exercise 7: reject a thing from an array
#
# Write a method that:
# 1) takes an array
# 2) creates an empty array in a variable
# 3) iterates over the given array
# 4) for each item, if it matches given thing, don't add to new array
# 5) returns the new array

def reject_item(array, item_to_reject)
  # Your code here
end

# Test
puts reject_item([1,2, 'hello', 'goodbye'], 'hello').to_s # should return [1, 2, 'goodbye']


# Answer
def reject_item(array, reject_item)
  output_array = []

  array.each do |item|
    if item == reject_item

    else
      output_array << item
    end
  end

  output_array
end
# /Answer





# X) Name guessing game
#
# Write a method that:
#
# 1) creates a list of names
# 2) chooses a random name from the list
# 3) starts a game loop
#   4) Tells user what names they can choose from
#   5) Asks user for input
#   6) Gets user input
#   7) If user guessed the right name, break the loop
#   8) If user guessed the wrong name, reject that name from the available list
#   9) repeat
#
# Game:
# Computer chooses a name from a list
#
# Game loop:
#
# Computer prints out list of available names
# ask for user guess
#
# if user guesses correct
# => Kill loop
# else
# => remove guess from list and repeat



# Answer
def game_loop
  names = ['bob', 'tim', 'sally']
  answer = names.sample

  loop do
    puts "I chose a name from the following list"
    puts names.join(',')

    print "Guess which name I chose: "
    user_input = gets.chomp

    # did user guess correctly?
    if user_input == answer
      puts "Congrats!  You guessed the right name!"
      break
    else
      puts "Nope, wrong answer"

      # Remove the guess from the list
      names = reject_item(names, user_input)
    end
  end
end
# /Answer








