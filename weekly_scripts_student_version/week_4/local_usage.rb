
# X) Install SublimeText
#
# Go to https://www.sublimetext.com/3
# Download the version of sublime for you

# Create a new file (example.rb) in the Documents directory
# add the following code to the file:
puts 'Hello World'




# X) Install ruby
#
# Mac OSX
#
# you already have it


# Windows
#
# - Go to: http://rubyinstaller.org/downloads/
# - Download version 2.2.6
# - Run the installer
# - Click the options:
#   "Add Ruby Executables to your PATH"
#   "Associate rb files with ruby installation"





# X) Open the terminal:
#
# Mac OSX
#
# Open the terminal Applications > Utilities > Terminal
#
# This will open the 'Bash Terminal' or the 'Bash Console'
#
# In Bash, each line will start with $.  In my examples below, I will
# use the $ to denote bash commands.  Do not type the $


# Windows
#
# To start a terminal with ruby preloaded, go to

# Start (the windows icon) > All Programs > Ruby 2.2.6 > Start Command Prompt with Ruby
# Now you can type "irb" to get a ruby console




# X) Run your code
#
# - Go back to sublime, right click and select "Copy File Path"
# - Go to your terminal and type '$ ruby' (don't include quotes) and then paste the file path
#   NOTE: if your file path has spaces in it, you will need to surround it in quotes
# - That will execute the code in your file



# X) Change sublime settings
#
# Update your sublime settings:
# Mac: In menu bar: Sublime Text > Preferences > Settings
# Windows: Preferences > Settings

# Add this to the file:
{
  "ensure_newline_at_eof_on_save": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
}



# X) Rubygems:
#
# A ruby gem is a library of code that you can install and use in your own code.
# Rubygems.org is a website that lists gems you can install.
#
# To verify rubygems is installed, type in terminal: '$ gem -v'



# X) Install Pry
#
# Pry is a debugger.  It allows you to pause your program while running
# and access the variables, methods, and "State" of your program.
# Debuggers are helpful for diagnosing and fixing errors in your code
#
# To install:
# 1) In terminal, type: '$ gem install pry' (no quotes)
#
# ---------------------------------------------------
# NOTE: If you get a 'permission denied error'
# A) In terminal, type: '$ gem install pry --user-install'
#
# You will get a warning at the top saying that it installed
# outside of the path and won't be usable.
#
# B) Copy the directory path it specifies and paste it into
# this command in the terminal, then hit enter:
#
# '$ echo export PATH=$PATH:paste_your_path_here >> ~/.bash_profile' (no quotes)
#
# C) restart your terminal
# ---------------------------------------------------
#
# 2) type '$ pry' on the terminal to test that it worked
#    - This will drop you into the 'pry console'
#    - You can tell you're in the pry console because each line will start: [1] pry(main)>
#    - In this console, you can type any ruby code
#
# 3) Type 'exit' to close the console
#
# 4) now in your file:
#   - at the top of the file type: require 'pry'
#   - below that type: binding.pry
# when you run the file, you will be dropped into a pry session just like in repl.it




# X) Use Pry
#
# You can put binding.pry anywhere in your code, and when the program hits
# that line, it will drop into a pry console
#
#
# Example:
#
# - Run the game_with_debug_option
# - 3 times, enter a word and hit enter
# - type 'debug' in the prompt. This will open the pry console: [1] pry(main)>
# - type some_variable to check what the value is in that variable
# - type recorded_user_input to see what's in the array of saved values
# - type some_other_method_you_have_access_to to run the method
# - type recorded_user_input.join(',') to see what the join method does
# - type "You entered: #{recorded_user_input.join(',')}" (including quotes)
#     to see how string interplation works

def some_other_method_you_have_access_to
  puts "congrats, you can access me"
end

def game_with_debug_option
  some_variable = '123'
  recorded_user_input = []

  loop do
    print 'Enter some input: '
    user_input = gets.chomp

    if user_input == 'debug'
      binding.pry
      next
    end

    if user_input == 'exit'
      puts "You entered: #{recorded_user_input.join(',')}"  # The "#{}" is called string interpolation
      break
    end

    recorded_user_input << user_input
  end
end


# Exercise
#
# In the tic tac toe game from last week, add the ability for the user to debug
#
# 1) In the game loop, when you get user input
# 2) before converting to an integer, check if the user input is 'debug'
# 3) if it is, then drop into a pry console by using 'binding.pry'
# 4) Run the game, play a few spaces, then type 'debug'
# 5) See that you have access to all variables and methods































