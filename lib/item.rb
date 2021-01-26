class Item 
    attr_reader :type, :rarity
    attr_accessor :name, :value
    @@all = []

    def self.save
        @@all << self
    end

    def initialize(:name, :type, :rarity, :value)
        @name = name
        @type = type
        @rarity = rarity
        @value = value

        save
    end

end