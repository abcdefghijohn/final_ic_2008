class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredient_names = []
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        ingredient_names << ingredient.name
      end
    end
    ingredient_names.uniq!
  end

  def highest_calorie_meal
    recipes_by_calorie = Hash.new
    @recipes.each do |recipe|
      recipes_by_calorie[recipe] = recipe.total_calories
    end
    recipes_by_calorie.key(recipes_by_calorie.values.max)
  end
end
