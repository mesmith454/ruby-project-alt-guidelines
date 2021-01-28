require 'pry'
class CommandLineInterface
    def print_options
        puts "Please select a number:"
        puts "1. Create a new user "
        puts "2. View all available items"
        puts "3. View current inventory"
        puts "4. Add an item"
        puts "5. Drop an item"
        puts "6. Rename an item"
    end

    def take_input
        user_input = gets.chomp
    end

    def greet
        puts "Welcome to the Inventory Manager"
        puts "What would you like to do? Input a number." 
        print_options
        take_input
    end
end