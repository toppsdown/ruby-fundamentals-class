# Reading JSON data
# https://hackhands.com/ruby-read-json-file-hash/

require 'json'

# Get path to the right file
dir = File.dirname(__FILE__)
full_path = File.expand_path(dir)
file_path_to_open = File.join(full_path, 'json_sample_data.json')


# In this case, we just want the text in a single string rather than
# by line because JSON is self contained
json_data = JSON.parse(File.read(file_path_to_open))

puts json_data.inspect
