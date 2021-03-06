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
         Item.find_by(name: name)
    end

    def rename_item(name, new_name)#u
        selected_item = find_item_by_name(name)
        selected_item.update(name: new_name)
    end

    def add_item(user_id, item_name)
        Inventory.create
    end

    def drop_item(user_id, item_name) #d
        Inventory.where(user_id: user_id) do
            Inventory.all.find_by(name: item_name).delete
        end
    end

    def selection_cycle
        pastel = Pastel.new

        puts pastel.blue("CREATE user")
        puts pastel.blue("VIEW_ALL items")
        puts pastel.blue("VIEW_INVentory")
        puts pastel.blue("ADD item")
        puts pastel.blue("RENAME item")
        puts pastel.blue("DROP item")
        puts pastel.blue("EXIT")
    end

    def render_table #see the problem here is this only works for hard coded premade values. doesn't REALLY effect function, but might get a little confusing. hammer that out later
        table = TTY::Table.new(header: [">Name<", ">Type<", ">Rarity<", ">Value<"], rows: [["The Idiot's Handbook", "Book", "1", "1"],["Cheese", "Weapon", "3", "10"],
        ["Mana Potion", "Consumable", "2", "0"],
        ["Helmet", "Equipment", "1", "3"],
        ["UltraSuperRad Thingamadoo", "Trinket", "5", "5"],
        ["That one thing", "Trinket", "4", "13"]])
        puts table.render
    end

    def greet
        puts "Welcome to the Inventory Manager"
       loop do
            selection_cycle
            ans = gets.chomp
            
            if ans == "CREATE"
                puts "Please enter a name:"
                name = gets.chomp
                new_char(name)
            
            elsif ans == "VIEW_ALL"
                # puts Item.all.inspect
                render_table
                
            elsif ans == "VIEW_INV"
                puts "Please input user id:"
                uid = gets.chomp
                view_inventory(uid)
                
            elsif ans == "ADD"
                puts "Please input a user id:"
                uida = gets.chomp
                puts "Please input an item id:"
                iida = gets.chomp
                add_item(uida, iida)
                view_inventory(uida)
                
            elsif ans == "RENAME"
                puts "What item would you like to rename?"
                item_name = gets.chomp
                puts "What would you like to rename #{item_name} to?"
                new_name = gets.chomp
                rename_item(item_name, new_name)
                puts "The item formerly known as #{item_name} is now named #{new_name}."
               
            elsif ans == "DROP"
                puts "Please enter a user id:"
                uidd = gets.chomp
                puts "Please enter an item id:"
                iidd = gets.chomp
                drop_item(uidd, iidd)
                view_inventory(uidd)
            else
                exit
            end
        end
    end
end