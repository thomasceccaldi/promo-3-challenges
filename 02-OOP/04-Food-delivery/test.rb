require_relative 'manager'
require_relative 'customer'
require_relative 'delivery_guy'
require_relative 'meal'
require_relative 'order'
require_relative 'controller'
require_relative 'restaurant'
require_relative 'employee'
require_relative 'interface'

resto = Restaurant.new("allo pizza", "Paris", "0132456435")


resto.add_manager("Jean-Michel", "1234")
resto.add_manager("P","P")
resto.add_delivery_guy("Sophie", "2167")
resto.add_delivery_guy("Jean", "1980")
resto.add_customer("Michel", "Paris7","06768798")
resto.add_customer("Isabelle", "Paris13","078779876")
resto.add_meal("margarita", 12)
resto.add_meal("regina", 14)
resto.add_order
resto.add_order


interface = Interface.new(resto)

interface.authenticate











