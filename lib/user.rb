class User < ActiveRecord::Base
    has_many :inventory

    def save_user(name)
        sql = <<-SQL INSERT INTO users(name)
        VALUES(?)
        SQL
        
        DB[:conn].execute(sql, self.name)
    end

    def create_user #functioning - create
        puts "Please enter a name:"
        name = gets.chomp

        User.create(name: name)
        puts name
        save_user
    end

    def view_avail_items #read
        Inventory.avail_items
    end

    def self.add_item #update (user inventory)
        Inventory.add_to_user
    end

    def self.open_inv #read
        Inventory.char_inv
    end

    def search_item_by_name(name)
        Inventory.search_items
    end

    def self.drop_item(item_id) #delete
        Inventory.remove_from_user
    end

    def self.rename_item(name, new_name)
        Inventory.rename_item
    end


end


