class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

  def menu_items
     MenuItem.all.find_all do |menu_items_instance|
      menu_items_instance.restaurant == self #matches every menu item with its designated restaurant
    end
  end

  def add_menu_item(dish_name,price)
    MenuItem.new(self,dish_name,price)
  end

  def print_menu
    menu_items.each do |menu_items| #borrowed the previous method, and iterated through it to output string
     puts "#{self.name} will be serving poorly cooked #{menu_items.dish_name} at the low price of $#{menu_items.price}."
    end
    return nil #returning nil because I don't want a value, I just need to print menu items to terminal
  end

  def self.biggest_menu
    list_of_restaurants = MenuItem.all.map do |finder| #Puts all of the dishes restaurant names into an array (expecting duplicates)
      finder.restaurant.name
    end
      restaurant_with_menu_size = list_of_restaurants.each_with_object(Hash.new(0)) do |word,counts| #takes all of the restaurant names, puts them in a hash and iterates through
        counts[word] += 1 #if the restaurant name already exists, it will add another count to the key
    end #I found this method through the web. Thanks Manish Shrivastava!! I would like explanation on why line 37 takes "Hash.new(0).. making adjustments to it will break the += 1"
      restaurant_with_menu_size.max_by do |key, value| #takes the key and values, and finds the max
        value #takes the highest value
        return key #returns it's key
    end
  end


end # end of Restaurant class

