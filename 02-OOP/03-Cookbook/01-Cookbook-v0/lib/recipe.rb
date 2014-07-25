class Recipe

  attr_reader :name, :description

  def initialize(attributes = {})
    @name = attributes[:name]
    @description = attributes[:description]
  end

  # on rentre les atribut dans un hash ?


end