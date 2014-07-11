#TODO: return number of calories for this mcDonald order

def poor_calories_counter(burger, side, beverage)

  burgers = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400
  }

  sides = {
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130
  }

  beverages = {
    "Coca" => 160,
    "Sprite" => 170
  }

  somme_cal = 0

  burgers.each do |key, value|
    if key == burger
    somme_cal += value
    end
  end

  sides.each do |key, value|
    if key == side
    somme_cal += value
    end
  end

  beverages.each do |key, value|
    if key == beverage
    somme_cal += value
    end
  end

return somme_cal

end

poor_calories_counter("Cheese Burger", "French fries", "Coca")
poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
poor_calories_counter("Big mac", "French fries", "Coca")


#TODO: return number of calories for a less constrained order
#
# on va retourner dans la methode un tableau ["French fries", "Happy Meal", "Sprite"]
#


def calories_counter(*orders)

  calories = {

    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "Happy Meal" => 580,
    "Best Of Big Mac" => 590,
    "Best Of Royal Cheese" => 300
  }

  somme_cal_ = 0

  orders.each do |x|
    somme_cal_ += calories[x]
  end

return somme_cal_

end

calories_counter("Big Mac", "French fries", "Happy Meal", "Coca")




