class User < ActiveRecord::Base
    attr_reader :name, :gold, :inventory, :item
    @@all = []

    def self.save
        @@all << self
    end
   
    def initialize (name, inventory)
        @name = name
        @inventory = []

        save
    end

    # def add_item(item)
       #inventory << Item.all.select(item)
    # end

    # def drop_item(item)
     #   inventory(item).pop or something like that
    # end

    # def rename_weapon(item)
        #if type = weapon
         #   name = user.chomp
         #end
    # end

    # def view_inv
        #@inventory
    # end

    # def view_item(item)
        #item.inspect
    # end



#### bernus
    #sell all items for percentage of value back
    #combine existing items into new
    #rare items' value multiplied by rarity rank
    #inv has lmtd space and will puts a certain message when certain methods are called on an empty inventory
    #gold and purchase stretch
end


