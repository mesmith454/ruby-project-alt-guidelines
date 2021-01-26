class Inventory < ActiveRecord::Base
    attr_reader :user_id
    @@all = []

    def self.save
        @@all << self
    end

    def initialize(user_id)
        @user_id = user_id

        save
    end

end