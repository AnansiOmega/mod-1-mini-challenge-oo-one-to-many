require 'pry'
class MenuItem
    attr_accessor
    attr_reader :dish_name, :price, :restaurant

    @@all = []

    def self.all
        @@all
    end

    def initialize(restaurant,dish_name,price)
        @restaurant = restaurant
        @dish_name = dish_name
        @price = price

        @@all << self
    end

    def restaurant_name
        self.restaurant.name
    end


end # end of MenuItem class

