class Inventory < ActiveRecord::Base
    belongs_to :user
    has_many :item

    def char_inv(user_id) #open inventory
       sql = <<-SQL SELECT Inventories.InventoryID, Users.UserName, Items.ItemName 
       FROM Inventories 
       INNER JOIN Users on Items.UserID=Users.UserID
       SQL
       DB[:conn].execute(user_id)
    end

    def add_to_user(user_id, item_id) #add
        sql = <<-SQL
            CREATE TABLE IF NOT EXISTS inventories(user_id, item_id)
            VALUES (?, ?);
        SQL
        DB[:conn].execute(user_id, item_id)
    end

    def remove_from_user(user_id, item_id)#delete
        sql = <<-SQL 
        DELETE FROM inventories WHERE UserID=user_id, ItemID=item_id;
        SQL
    end

    def avail_items(name)
        Item.all_items
    end

    def search_items(name)
        Item.find_by_name
    end

    def rename_item (user_id, name, new_name)
        Item.rename_item
    end

end