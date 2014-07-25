require "csv"
require_relative "recipe"
require_relative "controller"
require_relative "view"

class Cookbook

  attr_reader :recipes

  def initialize(cookbook_file_path)
    @cookbook_file_path = cookbook_file_path
    @recipes = []
    load_csv(@cookbook_file_path)
  end

  def add_recipe(recipe)
    @recipes << recipe
    save
  end


  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    save
  end

  def load_csv(file)
    CSV.foreach(file) do |row|
      each_recipe = { name: row[0], description: row[1] }
      @recipes << Recipe.new(each_recipe)
    end
  end


  def save
    CSV.open(@cookbook_file_path, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

end





