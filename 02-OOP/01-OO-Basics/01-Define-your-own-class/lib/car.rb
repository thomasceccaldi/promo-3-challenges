class Car

  attr_reader :brand, :model, :color, :year, :type, :seat, :transmission, :available

  def initialize(brand, model, color, year, type, seats, transmission)
    @brand = brand
    @model = model
    @color = color
    @year = year
    @type = type
    @seats = seats
    @transmission = transmission
    @available = true
  end

  def book
    @available = false
  end

  def restore
    @available = true
  end

end