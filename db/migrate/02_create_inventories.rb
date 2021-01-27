class CreateInventories < ActiveRecord::Migration[5.2]
    def change
        create_table :inventories do |t|
          t.integer :user_id
          t.integer :item_id
        end
    end

end