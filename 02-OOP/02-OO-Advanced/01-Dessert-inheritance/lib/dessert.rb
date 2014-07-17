class Dessert

  attr_accessor :name, :calories, :delicious, :healthy

  def initialize(name, calories)
    @name = name
    @calories = calories
    @delicious = nil
    @healthy = false
  end

  def healthy?
    if @calories < 200
      @healthy = true
    else
      @healthy = false
    end
  end

  def delicious?
    @delicious = true
  end
end

class JellyBean < Dessert

  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    if @flavor == "black licorice"
      @delicious = false
    else
      super
    end
  end
end