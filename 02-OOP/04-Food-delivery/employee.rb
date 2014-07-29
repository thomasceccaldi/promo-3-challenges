class Employee

  attr_reader :name
  attr_accessor :password

  def initialize(name, password)
    @name = name
    @password = password
  end
end

