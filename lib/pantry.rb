class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.select do |ingredient, quantity|
      if @stock.values.join.to_i >= quantity
        return true
      else
        false
      end
    end
  end
end
