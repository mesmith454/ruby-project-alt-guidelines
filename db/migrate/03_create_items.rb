class CreateItems < ActiveRecord::Migration[5.2]
    def change
        create_table :items do |t|
            t.string :name
            t.string :itype
            t.integer :rarity
            t.integer :value
        end
    end
end