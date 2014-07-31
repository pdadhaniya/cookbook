

class Cookbook
	attr_accessor :title
	attr_reader :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe #how does this work???
		puts "Added a recipe to the collection: #{recipe.title}"
	end

	def recipe_titles
		@recipes.each do |x|
			puts x.title
		end
	end

	def recipe_ingredients
		@recipes.each do |x|
			puts "These are the ingredients for #{x.title}: #{x.ingredients}"
		end
	end

	def print_cookbook
		@recipes.each do |x|
			puts "The title is #{x.title}."
			puts "The ingredients are #{x.ingredients.join(", ")}."
			puts "The steps to make are the following:"
			puts "1. #{x.steps[0]}"
			puts "2. #{x.steps[1]}"
			puts "3. #{x.steps[2]}"
		end
	end

	def remove_item(recipe)
		puts "The item #{recipe.title} has been deleted!"
		@recipes.delete(recipe)
	end
end


class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps

	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "The title is #{@title}"
		puts "The ingredients are #{@ingredients.join(", ")}."
		puts "The steps to make are the following:" 
		puts "1. #{@steps[0]}"
		puts "2. #{@steps[1]}"
		puts "3. #{@steps[2]}"
	end

	def add_hotsauce
		@ingredients << "hot sauce"
	end

end





# mex_cuisine = Cookbook.new("Mexican Cooking")
# burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

# puts mex_cuisine.title # Mexican Cooking
# puts burrito.title # Bean Burrito
# p burrito.ingredients # ["tortilla", "bean", "cheese"]
# p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

# mex_cuisine.title = "Mexican Recipes"
# puts mex_cuisine.title # Mexican Recipes

# burrito.title = "Veggie Burrito"
# burrito.ingredients = ["tortilla", "tomatoes"]
# burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# p burrito.title # "Veggie Burrito"
# p burrito.ingredients # ["tortilla", "tomatoes"]
# p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# mex_cuisine.recipes # []
# mex_cuisine.add_recipe(burrito)
# p mex_cuisine.recipes

# mex_cuisine.recipe_titles # Veggie Burrito
# mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

# burrito.print_recipe

# taco = Recipe.new("Crunchy Taco", ["shell", "lettuce", "cheese"], ["warm shell", "place lettuce", "add cheese"])
# mex_cuisine.add_recipe(taco)
# p mex_cuisine.recipes

# mex_cuisine.print_cookbook