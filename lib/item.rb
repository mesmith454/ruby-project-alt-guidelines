class Item < ActiveRecord::Base
   belongs_to :inventory
   @results

   def all_items
      sql = <<-SQL
      SELECT * FROM items;
      SQL
      @results << DB[:conn].execute(sql)
      @results.map do |i_hash|
         self.new(i_hash)
   end

   def save_item(name, itype, rarity, value)
      sql = <<-SQL INSERT INTO items(name, itype, rarity, value)
      VALUES(?, ?, ?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.itype, self.rarity, self.value)
   end

   def find_by_name(name) 
      results.select do |name| name == self.name
      end
      puts self.name
   end

   def self.rename_item(name, new_name)
      find_by_name
      name = new_name
   end
      
 
end