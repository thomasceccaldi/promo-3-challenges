require_relative "manager"


def into_hash(managers)
  hash = Hash.new
  managers.each { |manager| hash[manager.name] = manager.password }
  delivery_guy.each { |manager| hash[manager.name] = manager.password}
end



m1 = Manager.new("Bob", "shcqhdsc")
m2 = Manager.new("Eric", "shcqhdsc")
m3 = Manager.new("Michael", "shcqhdsc")


p into_hash([m1, m2, m3])


class UI

  def intialize(restaurant)
    @restaurant = restaurant
    @passwords = Hash.new
    @restaurant.employees.each { |employee| @passwords[employee.name] = employee}
    @exit = false
    @authenticated = false
  end

  def gets_and_ask(param)
    puts "*" * 30
    puts "enter your #{param}"
    gets.chomp
  end


  def authenticate
    until @authenticate
      login = gets_and_ask("login")
      password = gets_and_ask("password")
      if @passwords[login]
        @current_user =  @passwords[login]
        if @current_user.password == password
          @authenticate = true
          print_action_menu
        end
      end
    end
  end


  d

###############################################

  def welcome
    puts "Welcome to #{restaurant.name}"
    puts "_______________________"
  end

  def get_name
    puts "Please enter your username:"
    name = gets.chomp
  end

  def check_if_manager(name)
    restaurant.managers.map { |manager| manager.name }.include?(name)
  end

  def check_if_delivery_guy(name)
    restaurant.delivery_guy.map { |delivery_guy| delivery_guy.name }.include?(name)
  end

  def gets_status(name)
    if check_if_manager(name)
      return "manager"
    elsif check_if_delivery_guy(name)
      return "delivery_guy"
    else
      puts "Wrong Name"
      get_name
    end
  end

  def get_password
    puts "Please enter your password:"
    password = gets.chomp
  end

  def check_password(name)
    if gets_status(name) == "manager"
      manager_array = restaurant.managers.select { |manager| manager.name == name}
      manager_array[0].password == get_password
    elsif gets_status(name) == "delivery_guy"
      delivery_guy_array = restaurant.delivery_guys.select { |dl| dl.name == name}
      delivery_guy_array[0].password == get_password
    end
  end

