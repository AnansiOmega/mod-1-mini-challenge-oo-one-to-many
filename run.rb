require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)
  
    tgif = Restaurant.new("TGIF","American")
    olive_garden = Restaurant.new("Olive Garden","Italian")
    chilis = Restaurant.new("chilis","American")
    el_burrito_loco = Restaurant.new("El Burrito Loco","Mexican")
    mcdonalds = Restaurant.new("McDonalds","American")


    spaghett = MenuItem.new(olive_garden,"spaghett",12)
    burger = MenuItem.new(mcdonalds,"burger",14)
    sammy = MenuItem.new(tgif,"sammy",8)
    tacos = MenuItem.new(el_burrito_loco,"tacos",12)
    chili = MenuItem.new(chilis,"chili",4)
    salad = MenuItem.new(olive_garden,"Salad",5)




binding.pry
"pls"