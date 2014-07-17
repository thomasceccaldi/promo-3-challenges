class Restaurant

  #TODO add relevant accessors if necessary
  attr_reader :city, :name
  attr_accessor :average_rating, :rates

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @rates=[]
    @average_rating = 0

  end

  def rate(grade)
    @rates << grade
    @average_rating = rates.inject{ |sum, el| sum + el }.to_f / rates.size

  end

  #TODO: implement #filter_by_city and #rate methods

  def self.filter_by_city(restos, city_selected)

    restos.select { |restaurant| restaurant.city == city_selected }

  end

end