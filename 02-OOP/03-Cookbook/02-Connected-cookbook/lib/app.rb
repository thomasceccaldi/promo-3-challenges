require_relative 'cookbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'



CSV_FILE = File.join(File.dirname(__FILE__), 'recipes.csv')
cookbook = Cookbook.new(CSV_FILE)
controller = Controller.new(cookbook)

Router.new(controller).run


doc = Nokogiri::HTML(File.open('marmiton.html'))

doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5}"
end