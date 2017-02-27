require 'csv'

# CSV documentation:

# Get path to the right file
dir = File.dirname(__FILE__)
full_path = File.expand_path(dir)
file_path_to_open = File.join(full_path, 'csv_sample_data.csv')

csv_data = []

File.open(file_path_to_open, 'r') do |file_object|

  # Get all the lines in the file in a single array
  file_text = file_object.readlines

  # Print out all file text to the console
  file_text.each do |line|
    csv_data << CSV.parse(line)
  end
end

puts csv_data.inspect
