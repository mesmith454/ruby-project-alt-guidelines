class User < ActiveRecord::Base
    def self.open_inventory
        Inventory.new(self)
    end

    # def add_item(item)
    #  
    # end

    # def drop_item(item)
     #   inventory.find(item).pop or something like that
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


