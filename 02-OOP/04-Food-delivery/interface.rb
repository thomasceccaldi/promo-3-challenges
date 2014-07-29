require_relative 'manager'
require_relative 'customer'
require_relative 'delivery_guy'
require_relative 'meal'
require_relative 'order'
require_relative 'restaurant'
require_relative 'employee'



class Interface

  attr_accessor :hash_employees, :restaurant, :exit, :authenticated

  def initialize(restaurant)
    @restaurant = restaurant
    @hash_employees = Hash.new
    @exit = false
    @authenticated = false
    @restaurant.employees.each do |employee|
      puts "adding employee #{employee.inspect}"
      @hash_employees[employee.name] = employee
    end

  end

  def gets_and_ask(param)
    puts "*" * 30
    puts "enter your #{param}"
    gets.chomp
  end

  def go_back_prev_menu
    puts "press any key to go back to previous menu"
    if gets.chomp
    print_action_menu
    end
  end


  def authenticate
    until @authenticate
      login = gets_and_ask("login")
      password = gets_and_ask("password")
      if @hash_employees[login]
        @current_user =  @hash_employees[login]
        print @current_user.password
        if @current_user.password == password
          @authenticate = true
          print_action_menu
        end
      end
    end
  end

  def print_action_menu
    puts "Welcome to #{@restaurant.name} !"
    if @current_user.is_a? Manager
      menu_manager
    else
      menu_delivery
    end
  end


  def menu_manager
    puts "welcome, #{@current_user.name} your access level is Manager"
    puts "What would you like to do?"
    puts "1. List customers"
    puts "2. Add customer"
    puts "3. View orders <customer_id>"
    puts "4. Add order <customer_id>, <employee_id_>"
    puts "5. Remove order <order_id>"
    puts "6. List employees"
    puts "7. Log out"
    answer = gets.chomp.to_i

    case answer
      when 1 then restaurant.customers.each{|customer| puts "nom du client : #{customer.name}, num de tel : #{customer.phone_number}" }
        go_back_prev_menu
      when 2 then
        name = gets_and_ask("customer's name")
        location = gets_and_ask("customer's location")
        phone_number = gets_and_ask("customer's phone_number")
        restaurant.add_customer(name, location, phone_number)
        puts "votre fichier client a été mis à jour, voici la nouvelle liste : "
        restaurant.customers.each{|customer|
          puts "nom du client : #{customer.name}, adresse : #{customer.location}, num de tel : #{customer.phone_number}" }
        go_back_prev_menu

      ##########
      #when 3 then
      #  restaurant.add_order
      ######

      when 4 then
      when 5 then
      when 6 then
      when 7 then
      end
  end


  def menu_delivery
    puts "welcome, #{@current_user.name} your access level is Delivery Guy"
    puts "What would you like to do?"
    puts "1. View orders"
    puts "2. complete order <order_id>"
    puts "3. Log out"
    return gets.chomp.to_i

    #case menu_delivery
      #when 1 then
      #when 2 then
      #when 3 then
  end
end






