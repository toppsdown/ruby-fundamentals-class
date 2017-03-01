# Using Pry

You can put binding.pry anywhere in your code, and when the program hits
that line, it will drop into a pry console


Example:

- Run the game_with_debug_option
- 3 times, enter a word and hit enter
- type 'debug' in the prompt. This will open the pry console: [1] pry(main)>
- type some_variable to check what value is in that variable
- type recorded_user_input to see what's in the array of saved values
- type some_other_method_you_have_access_to to run the method
- type recorded_user_input.join(',') to see what the join method does
- type "You entered: #{recorded_user_input.join(',')}" (including quotes)
   to see how string interplation works

```ruby
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
```


## Exercise:  Add debugging to your games

In one of the games you've written, add the ability for the user to debug
1) In the game loop, when you get user input  
2) before converting to an integer, check if the user input is 'debug'  
3) if it is, then drop into a pry console by using 'binding.pry'  
4) Run the game, play a rounds, then type 'debug'  
5) See that you have access to all variables and methods of the program 





