# X) Hashes: Key/Value pairs

# Hash is a mapping from a key to a value
#
# Example:
#
# a vending machine maps a location code to
# the food in that slot:
#
# Note: This is called a "Hash Rocket": =>

vending_machine = {
  'A1' => 'Doritos',
  'A2' => 'Cool Ranch Doritos',
  'B1' => 'Cheetos',
  'B2' => 'Snickers'
}

# Exercise:
# Go to this website:
# http://media.oregonlive.com/myoregon/photo/swjunk27474rj-2473099jpg-1e3dd5c7fe85e7c2.jpg
#
# 1) Look at the first row of items
# 2) Create a hash that maps the ids to their food items

# Location  Name
# D0        Pop Tarts - Smores
# D2        Pop Tarts - Strawberry
# D4        Pop Tarts - Strawberry
# D6        Rice Crispy Treats
# D8        Reese's Pieces

vending_machine = {
  # Your code here
}


# Answer
vending_machine = {
  'D0' => "Pop Tarts - Smores",
  'D2' => "Pop Tarts - Strawberry",
  'D4' => "Pop Tarts - Strawberry",
  'D6' => "Rice Crispy Treats",
  'D8' => "Reese's Pieces"
}
# /Answer


# X) Hashes: Looking up a value
#
# To access values in the hash, we use it's key:
#
# Example:
#
vending_machine['D8'] # => returns "Reese's Pieces"


# Exercise:
#
# Use ruby to get me a smores pop tarts.  What key do I need?

# Answer
vending_machine['D0']
# /Answer


# X) Hashes: Iterating over keys and values
#
# Refresher on array iteration:
#
# my_array.each do |item|
#   do something with item
# end
#
#
# Hash iteration gives us two block arguments instead of one
#
# my_hash.each do |key, value|
#   do something with key and value
# end


# Example
my_hash = {
  'name' => 'Tom',
  'age' => 27
}

def print_hash(given_hash)
  given_hash.each do |key, value|
    puts "Key: #{key} contains value: #{value}"
  end
end

# Prints out:
# "Key: name contains value: Tom"
# "Key: age contains value: 27"

print_hash(my_hash)




# Exercise: Print the vending machine mapping
#
# Write a method that:
# 1) Iterates over each key/value pair
# 2) prints them in the format: "Location: #{item_location}, Name: #{item_name}"

def print_vending_menu(vending_mapping)
  # your code here
end


# Test
vending_machine_2 = {
'D0' => "Pop Tarts - Smores",
'D2' => "Pop Tarts - Strawberry",
'D4' => "Pop Tarts - Strawberry",
'D6' => "Rice Crispy Treats",
'D8' => "Reese's Pieces"
}

# print_vending_menu(vending_machine_2)
#
# Should print:
#
# Location: D0, Name: Pop Tarts - Smores
# Location: D2, Name: Pop Tarts - Strawberry
# Location: D4, Name: Pop Tarts - Strawberry
# Location: D6, Name: Rice Crispy Treats
# Location: D8, Name: Reese's Pieces


# Answer
def print_vending_menu(vending_mapping)
  vending_mapping.each do |location, name|
    puts "Location: #{location}, Name: #{name}"
  end
end
# /Answer



# Exercise: Sum prices in a hash
#
# Write a method that:
# 1) Iterates through the vending machine mappings
# 2) Sums the prices of all the items
# 3) Returns the sum

def sum_prices(price_mapping)
  # Your code here
end

# Test
prices = {
  "Pop Tarts - Smores" => 1.00,
  "Pop Tarts - Strawberry" => 1.00,
  "Rice Crispy Treats" => 0.75,
  "Reese's Pieces" => 1.25
}

sum_prices(prices) # should return 4


# Answer
def sum_prices(price_mapping)
  sum = 0

  price_mapping.each do |name, price|
    sum += price
  end

  sum
end
# /Answer



# X) Nested hashes: The russian doll of code
#
# Hashes can use any data as the key or the value
# This means that a hash key can map to another hash

# Example:
#
# Vending machines actually have 3 parts of data:
#
# 1) Location: The key code that you enter and maps to the item
# 2) Item name: The name of the item in that location
# 3) Price: The price to charge the buyer
#
# We can map this data using nested hashes:
nested_vending_machine_example = {
  'A1' => { 'name' => 'Doritos', 'price' => 0.75 },
  'A2' => { 'name' => 'Cool Ranch Doritos', 'price' => 1.00 }
}


# Exercise: Write your own nested hash
#
# Use the same image as above:
# http://media.oregonlive.com/myoregon/photo/swjunk27474rj-2473099jpg-1e3dd5c7fe85e7c2.jpg
#
# Now change the hash to include the cost
# Location  Name                    Price
# D0        Pop Tarts - Smores      1.00
# D2        Pop Tarts - Strawberry  1.00
# D4        Pop Tarts - Strawberry  1.00
# D6        Rice Crispy Treats      0.75
# D8        Reese's Pieces          1.25

nested_vending_machine_answer = {
  # your key/values here
}

# Answer
nested_vending_machine_answer = {
  'D0' => {
    'name' => "Pop Tarts - Smores",
    'price' => 1.00
  },
  'D2' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D4' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D6' => {
    'name' => "Rice Crispy Treats",
    'price' => 0.75
  },
  'D8' => {
    'name' => "Reese's Pieces",
    'price' => 1.25
  }
}
# /Answer






# X) Nested Hashes: How do I get the data back out?
#
# With single level hashes, we only needed a single key
# With nested hashes, we need multiple keys
#
# Example:
#
nested_vending_machine_example['A1']['name'] # => returns 'Doritos'

# Exercise:  Use keys to get the values we want
#
# Using your nested hash above:
# 1) What keys do I need to get the price of smores pop tarts?
# 2) What keys do I need to get the price of reeses pieces?

# Answer
nested_vending_machine_answer['D0']['price']
nested_vending_machine_answer['D8']['price']
# /Answer







# X) Iterating over nested hashes
#
# When you iterate over nested hashes, the value is the
# lower level hash
#
# my_nested_hash.each do |key, value|
#   value here is ANOTHER HASH
# end
#
# Example:

nested_iterator_hash = {
  'D0' => {
    'name' => "Pop Tarts - Smores",
    'price' => 1.00
  },
  'D2' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  }
}

nested_iterator_hash.each do |key, nested_hash|
  # For the first iteration:
  key # => 'D0'
  nested_hash['name'] # => 'Pop Tarts - Smores'
  nested_hash['price'] # => 1.00
end


# Exercise: Add up the prices in a nested hash
#
# Write a method that:
# 1) iterates over the nested hash
# 2) sums the prices of all items
# 3) returns the sum

# Use each to add up and return the price
def sum_prices(vending_mapping)
  # your code here
end

# Test
vending_machine = {
  'D0' => {
    'name' => "Pop Tarts - Smores",
    'price' => 1.00
  },
  'D2' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D4' => {
    'name' => "Pop Tarts - Strawberry",
    'price' => 1.00
  },
  'D6' => {
    'name' => "Rice Crispy Treats",
    'price' => 0.75
  },
  'D8' => {
    'name' => "Reese's Pieces",
    'price' => 1.25
  }
}

sum_prices(vending_machine) # Should return $5.00


# Answer
def sum_prices(vending_mapping)
  sum = 0

  vending_mapping.each do |location, food_item|
    sum += food_item['price']
  end

  sum
end
# /Answer


# X) Hashes: Making a person
#
# We can use hashes to represent more complicated real life
# data structures
#
# Example:
#
# Hash: represents a person
person = {
  'name' => 'Tom Thompson',
  'age' => 27
}

# Nested hash: represents more complicated data about a person
person = {
  'name' => 'Tom Thompson',
  'age' => 27,
  'address' => {
    'house_number' => '123',
    'street' => 'Fake St.',
    'city' => 'Boston',
    'state' => 'Massachusetts',
    'zip_code' => '12345'
  }
}


# Exercise:
#
# 1) Create a hash that represents you as a person
# 2) Include your name, age, favorite food
me = {

}



# X) Hashes: editing a hash after it's creation
#
# Hashes can be changed after creation by using the key and =
#
# Example:
maura = {
  'name' => 'Maura',
  'eye_color' => 'blue'
}

maura['age'] = 27  # sets a new key/value pair
maura['eye_color'] = 'green' # overwrites an existing key

# Exercise:
#
# Add more information to your representation:
# 1) Add your eye color
# 2) Add your hair color

# Answer
me['eye_color'] = 'Hazel'
me['hair_color'] = 'Brown'
# /Answer







# X)

# Now let's make a guess who game

noah = {
  'name' => 'Noah',
  'eye_color' => 'blue'
}

# Exercise 9:
#
# Write a method that takes a person and a color and checks if
# The person has that eye color
def has_eye_color?(person, color)
  # Your code here
end

# Test
check_test(has_eye_color?(noah, 'blue'), true) # should return true
check_test(has_eye_color?(noah, 'brown'),false) # should return false



# Answer
def has_eye_color?(person, color)
  person['eye_color'] == color
end
# /Answer







# Exercise 10:
#
# Write a method that takes a color and returns the list
# of people that don't have that eye color

people = [
  { 'name' => 'Noah', 'eye_color' => 'blue' },
  { 'name' => 'Emma', 'eye_color' => 'brown' },
  { 'name' => 'Liam', 'eye_color' => 'hazel' }
]

def reject_color(people, color)
  # your code here
end


# Test
# Should return
expectation = [
  { 'name' => 'Emma', 'eye_color' => 'brown' },
  { 'name' => 'Liam', 'eye_color' => 'hazel' }
]

check_test(reject_color(people, 'blue'), expectation)


# Answer
def reject_color(people, color)
  output_array = []

  people.each do |person|
    unless person['eye_color'] == color
      output_array << person
    end
  end

  return output_array
end
# /Answer





# Exercise 11:

# Write a game that:
# - chooses a random person: people.sample

# Loop
# - prints the names of all people in the people list and their eye color
# - asks the user to guess eye color
# - if user guesses the right eye color
#   => Tell the user they win,
#      print out the name of the person,
#      break the loop
# - else
#   => remove that person from the list
# repeat



def game_loop
  people = [
    { 'name' => 'Noah', 'eye_color' => 'blue' },
    { 'name' => 'Emma', 'eye_color' => 'brown' },
    { 'name' => 'Liam', 'eye_color' => 'hazel' },
    { 'name' => 'Olivia', 'eye_color' => 'green' },
    { 'name' => 'Mason', 'eye_color' => 'amber' },
    { 'name' => 'Ava', 'eye_color' => 'gray' }
  ]

  # your code here

  loop do
    # your code here
  end
end

# Answer
def game_loop
  people = [
    { 'name' => 'Noah', 'eye_color' => 'blue' },
    { 'name' => 'Emma', 'eye_color' => 'brown' },
    { 'name' => 'Liam', 'eye_color' => 'hazel' },
    { 'name' => 'Olivia', 'eye_color' => 'green' },
    { 'name' => 'Mason', 'eye_color' => 'amber' },
    { 'name' => 'Ava', 'eye_color' => 'gray' }
  ]

  # Get Answer
  answer = people.sample

  loop do
    # Tell user what the options are
    print_hash(people)

    # Tell user to guess an
    print 'Please guess an eye color: '
    input = gets.chomp

    if answer['eye_color'] == input
      puts 'You Win!'
      puts "The answer was #{answer['name']}"
      break
    else
      people = reject_color(people, input)
    end
  end
end
#/Answer










