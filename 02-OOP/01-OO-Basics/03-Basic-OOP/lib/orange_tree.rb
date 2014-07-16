class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_reader :height, :age, :fruits, :dead

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

    if @age >= 50 && rand(101 - @age) == 0
      @dead = true
    end

    if @age > 5 && @age <= 10
      @fruits = 100

    elsif @age > 10 && @age <= 15
      @fruits = 200
    end

  end

  def dead?
    @dead
  end

  def pick_a_fruit!
    @fruits -= 1
  end

end
