require 'pry'
require TTY::Prompt.new   ###https://github.com/piotrmurach/tty-prompt

class CommandLineInterface

choices = [
    {name: "Create a new user", value: 1},
    {name: "View all available items", value: 2},
    {name: "View current inventory", value: 3},
    {name: "Add an item", value: 4},
    {name: "Drop an item", value: 5},
    {name: "Rename an item", value: 6}
]

    def greet
        puts "Welcome to the Inventory Manager"
        prompt.enum_select("What would you like to do?", choices, cycle: true)
        
        
    end
end