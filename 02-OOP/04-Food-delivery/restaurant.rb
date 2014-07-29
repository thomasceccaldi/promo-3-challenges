require_relative 'manager'
require_relative 'customer'
require_relative 'delivery_guy'
require_relative 'meal'
require_relative 'order'






class Restaurant

attr_reader :name, :location, :phone_number
attr_accessor :employees, :delivery_guys, :customers, :meals, :orders


  def initialize (name, location, phone_number)
    @name = name
    @location = location
    @phone_number = phone_number
    @employees = []
    @customers = []
    @meals = []
    @orders = []
  end


  def add_manager(name, password)
    @employees << Manager.new(name, password)
    return @employees
  end

  def add_delivery_guy(name, password)
    @employees << DeliveryGuy.new(name, password)
    return @employees
  end

  def add_customer(name, location, phone_number)
    @customers << Customer.new(name, location, phone_number)
    return @customers
  end

  def add_meal(name, price)
    @meals << Meal.new(name, price)
    return @meals
  end

  def add_order
    order_id = @orders.max { |order| order.id + 1}
    @orders << Order.new(order_id)
    return @orders
  end
end







