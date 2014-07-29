class Customer

  attr_accessor :name, :location, :phone_number

  def initialize(name, location, phone_number)
    @name = name
    @location = location
    @phone_number = phone_number
  end
end