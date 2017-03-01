# Setting up your local environment

## Install SublimeText

- Go to https://www.sublimetext.com/3
- Download the version of sublime for your operating system
- Create a new file (example.rb) in the Documents directory
- add the following code to the file:
```ruby
puts 'Hello World'
```

  
  

## Install ruby
### Mac OSX
you already have it


### Windows

- Go to: http://rubyinstaller.org/downloads/
- Download version 2.2.6
- Run the installer
- Click the options:
  - "Add Ruby Executables to your PATH"
  - "Associate rb files with ruby installation"





## Open the terminal:
### Mac OSX
- Open the terminal Applications > Utilities > Terminal. This will open the 'Bash Terminal' or the 'Bash Console'
- In Bash, each line will start with **$**.  In the examples below, **$** to denotes bash commands.  Do not type the **$**
  
  
### Windows
- To start a terminal with ruby preloaded, go to:
  - `Start (the windows icon) > All Programs > Ruby 2.2.6 > Start Command Prompt with Ruby`  
- Now you can type "irb" to get a ruby console




## Run your code
- Go back to sublime, right click on the open file and select "Copy File Path"
- Go to your terminal and type `$ ruby` (don't include $) and then paste the file path  
  **NOTE:** if your file path has spaces in it, you will need to surround it in quotes
- That will execute the code in your file



## Change sublime settings
- Update your sublime settings:  
  **Mac:** In menu bar: Sublime Text > Preferences > Settings  
  **Windows:** Preferences > Settings  

- Add this to the file:
```json
{
  "ensure_newline_at_eof_on_save": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
}
```



## Rubygems
A ruby gem is a library of code that you can install and use in your own code.
Rubygems.org is a website that lists gems you can install.
To verify rubygems is installed, type in terminal:   
`$ gem -v`



## Install Pry

Pry is a debugger.  It allows you to pause your program while running
and access the variables, methods, and "State" of your program.
Debuggers are helpful for diagnosing and fixing errors in your code
  
To install:
1) In terminal, type: `$ gem install pry` (No $)
  
---
**NOTE:** If you get a 'permission denied error'  
A) In terminal, type: `$ gem install pry --user-install`

You will get a warning at the top saying that it installed
outside of the path and won't be usable.

B) Copy the directory path it specifies and paste it into
this command in the terminal, then hit enter:

`$ echo export PATH=$PATH:"paste_your_path_here" >> ~/.bash_profile`

C) restart your terminal

---
  
2) type `$ pry` on the terminal to test that it worked
  - This will drop you into the "pry console"
  - You can tell you're in the pry console because each line will start: [1] pry(main)>
  - In this console, you can type any ruby code
  
3) Type 'exit' to close the console
  
4) now in your file in Sublime:
 - at the top of the file type: `require 'pry'`
 - below that type: `binding.pry`
when you run the file, you will be dropped into a pry session just like in repl.it

File Contents:
```ruby
require 'pry'
binding.pry   #  The program will stop here

puts "Hello"
```


## Using Pry
Follow the guide [here](pry_usage.md) to learn how to use pry


