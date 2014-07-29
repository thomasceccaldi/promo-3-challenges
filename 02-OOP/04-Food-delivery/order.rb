class Order

  attr_accessor :order

  def initialize(id)
    @id = id
    @completed = false
    @meals_order = []
    @delivery_guy = nil
    @manager = nil
    @customer = nil
  end

  def add_meal(id, *meal)
    @meals_order << meal
  end

  def attribute_delivery_guy(id, delivery_guy)
    @delivery_guy = delivery_guy
  end

  def attribute_customer(id, customer)
    @customer = customer
  end

  def attribute_manager(id, manager)
    @manager = manager
  end

  def completed!(id)
    @completed = true
  end
end





