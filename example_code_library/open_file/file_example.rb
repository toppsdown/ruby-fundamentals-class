# File documentation:



# Find the relative path to the current directory of this file
dir = File.dirname(__FILE__)

# Find the absolute path to the current directory of this file
full_path = File.expand_path(dir)

# Assuming the file we want to open is in the same directory as this file
# this will generate the path to the file we want to open
file_path_to_open = File.join(full_path, 'text_file_sample.txt')


# Open the file
# The 'open' method automatically closes the file
# when you are done with it

# 'r' means that we want to read from it
# file_object is the variable that represents the file
File.open(file_path_to_open, 'r') do |file_object|

  # Get all the lines in the file in a single array
  file_text = file_object.readlines

  # Print out all file text to the console
  file_text.each do |line|
    puts line
  end
end



# Open the file manually:
file_object = File.new(file_path_to_open, 'r')
file_text = file_object.readlines
file_text.each do |line|
  puts line
end

# Close the file manually.  If you don't do this you will get a memory leak
file_object.close

