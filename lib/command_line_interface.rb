require 'pry'

class CommandLineInterface
    def new_char(name) #c
        User.create
    end

    def open_new_inv(user_id, item_id = 1)
        Inventory.create
    end

    def view_inventory(user_id)
        puts Inventory.where(user_id: user_id).inspect
    end

    def find_user_by_id(id) #r
        idnum = User.find_by(id)
        puts idnum
    end

    def find_item_by_name(name)#r
        puts Item.find_by(name)
    end

    def rename_item(name, new_name)#u
        find_item_by_name
        item.name = new_name
        item.save
    end

    def add_item(user_id, item_name)
        Inventory.new
        inventory.save
    end

    def drop_item(user_id, item_id) #d
        Inventory.select do |uid| uid = user_id
            Inventory.delete(item_id)
        end
    end

    def selection_cycle
        puts "CREATE user"
        puts "VIEW_ALL items"
        puts "VIEW_INVentory"
        puts "ADD item"
        puts "RENAME item"
        puts "DROP item"
    end

    def greet
        puts "Welcome to the Inventory Manager"
       
        selection_cycle
        ans = gets.chomp

        if ans == "CREATE"
            puts "Please enter a name:"
            name = gets.chomp
            new_char(name)
            selection_cycle
            ans = gets.chomp
        elsif ans == "VIEW_ALL"
            puts Item.all.inspect
            selection_cycle
            ans = gets.chomp
        elsif ans == "VIEW_INV"
            puts "Please input user id:"
            uid = gets.chomp
            view_inventory(uid)
            selection_cycle
            ans = gets.chomp
        elsif ans == "ADD"
            puts "Please input a user id:"
            # uida = gets.chomp
            # puts "Please input an item id:"
            # iida = gets.chomp
            # add_item(uida, iida)
            # selection_cycle
            # ans = gets.chomp
        elsif ans == "RENAME"
            puts "What item would you like to rename?"
            item_name = gets.chomp
            puts "What would you like to rename #{item_name} to?"
            new_name = gets.chomp
            rename_item(item_name, new_name)
            puts "The item formerly known as #{item_name} is now named #{new_name}."
            selection_cycle
            ans = gets.chomp
        elsif ans == "DROP"
            puts "Please enter a user id:"
            uidd = gets.chomp
            puts "Please enter an item id:"
            iidd = gets.chomp
            Inventory.delete(uidd, iidd)
            selection_cycle
            ans = gets.chomp
        end
    end
end