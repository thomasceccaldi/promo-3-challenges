class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_accessor :height, :age, :fruits_produced, :dead

  def initialize
    @height = 0
    @age = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!

    @age += 1
    @fruits = 0

    if @age <= 10
      @height += 1
    end

    if age >= 50 && rand(101-@age) == 0
        @dead = true
    end
  end


  def pick_a_fruit!

    @fruits -= 1
  end

end




